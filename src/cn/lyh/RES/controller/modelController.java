package cn.lyh.RES.controller;

import cn.lyh.RES.entity.GO;
import cn.lyh.RES.entity.JM;
import cn.lyh.RES.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.swing.text.html.HTMLDocument;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

import cn.lyh.RES.entity.timeData;
import cn.lyh.RES.entity.tableName;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Controller
@RequestMapping("/model")
public class modelController {
    private String modelFilePath = "E:\\work\\软件可靠性\\ReliabilityEvaluationSystem\\src\\cn\\lyh\\RES\\modelFile\\";
    private int trainNUM;
    private String IDs;
    private int[] IDd;
    private String Ts;
    private double[] Td;
    private JM jmModel;
    private GO goModel;

    @Autowired
    private DataService dService;

    modelController(){
        IDs = null;
        Ts = null;
        jmModel = null;
        goModel = null;
        trainNUM = 0;
    }

    //调用进程执行python文件
    private List<String> pythonProcess(String[] cmdStr){
        try {
            Process process = Runtime.getRuntime().exec(cmdStr);
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line = null;
            List<String> result = new ArrayList<>();

            while ((line = in.readLine()) != null) {
                //System.out.println(line);
                result.add(line);
            }
            in.close();
            process.waitFor();
            return result;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/loadData", method = RequestMethod.POST)
    public @ResponseBody boolean loadData(String sqlName, int num){
        trainNUM = num;
        List<timeData> tmp = dService.getData(sqlName);
        IDs = "";
        Ts = "";
        IDd = new int[tmp.size()];
        Td = new double[tmp.size()];
        int index = 1;
        if (tmp != null){
            for (timeData d : tmp){
                IDs = IDs + index + " ";
                Ts = Ts + d.getT() + " ";
                IDd[index-1] = index;
                Td[index-1] = Double.valueOf(d.getT());
                index++;
            }/*
            System.out.println(Ts);
            for (double t:Td) {
                System.out.print(t);
                System.out.print(" ");
            }*/
            return true;
        }
        else return false;
    }

    @RequestMapping(value = "/listData", method = RequestMethod.POST)
    public @ResponseBody String[] listData(){
        List<tableName> tmp = dService.getDataNameList();
        List<String> tmp1 = new ArrayList<>();
        for (tableName t : tmp)
            tmp1.add(t.getDataName());
        //System.out.println(tmp1);
        return tmp1.toArray(new String[tmp1.size()]);
        //return new int[]{12,20};
    }

    @RequestMapping(value = "/importData", method = RequestMethod.POST)
    public @ResponseBody boolean importData(@RequestParam("file") CommonsMultipartFile file)throws IllegalStateException, IOException {
        List<timeData> d = new ArrayList<>();
        String dataName = "testdata3";
        String[] tmp = new String("22 23 24").split(" ");
        for (String t : tmp)
            d.add(new timeData(t));

        System.out.println("fileName："+file.getOriginalFilename());
        String path="E:/"+new Date().getTime()+file.getOriginalFilename();

        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);

        return dService.importNewData(new tableName(dataName), d);
    }

    @RequestMapping(value = "/test", method = RequestMethod.POST)
    public @ResponseBody String test(){
        String[] args = new String[]{"python", modelFilePath + "test.py", "arg", "1", "2"};
        List<String> result = pythonProcess(args);
        if (result != null){
            return result.get(0);
        }
        else
            return "error";
    }

    @RequestMapping(value = "/JM", method = RequestMethod.POST)
    public @ResponseBody String[] JMmodel(){
        if (IDs != null && Ts != null) {
            String[] args = new String[]{"python", modelFilePath + "JM.py", IDs, Ts, "" + trainNUM};
            List<String> result = pythonProcess(args);
            //System.out.println(result.get(0));
            if (result.size() == 2) {
                jmModel = new JM(Double.valueOf(result.get(0)), trainNUM, Double.valueOf(result.get(1)));
                return new String[]{result.get(0), result.get(1)};
            }
            else
                return new String[]{result.get(0)};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/GO", method = RequestMethod.POST)
    public @ResponseBody String[] GOmodel(){
        if (IDs != null && Ts != null) {
            String[] args = new String[]{"python", modelFilePath + "GO.py", IDs, Ts, ""+trainNUM};
            List<String> result = pythonProcess(args);
            if (result.size() == 2) {
                //System.out.println(result.get(0));
                double sum = 0;
                for (double t : Td)
                    sum += t;
                goModel = new GO(Double.valueOf(result.get(0)), Double.valueOf(result.get(1)), sum);
                return new String[]{result.get(0), result.get(1)};
            }
            else
                return new String[]{result.get(0)};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/BP", method = RequestMethod.POST)
    public @ResponseBody ArrayList<double[]> BPmodel(int resultNum, double rate, int inputNum, int epochs, double precision){
        if (IDs != null && Ts != null) {
            String[] args = new String[]{
                    "python", modelFilePath + "BP\\BP_net.py", Ts,
                    String.valueOf(trainNUM),
                    String.valueOf(resultNum),
                    String.valueOf(rate),
                    String.valueOf(inputNum),
                    String.valueOf(epochs),
                    String.valueOf(precision)
            };
            List<String> result = pythonProcess(args);
            double[] error = new double[epochs/100];
            double[] pretime = new double[resultNum];
            String[] tmp;

            tmp = result.get(0).substring(1, result.get(0).length()-1).split(",");
            for (int i=0;i<epochs/100;i++) {
                error[i] = Double.valueOf(tmp[i]);
            }

            tmp = result.get(1).substring(1, result.get(1).length()-1).split(",");
            for (int i=0;i<resultNum;i++)
                pretime[i] = Double.valueOf(tmp[i]);

            ArrayList<double[]> array = new ArrayList<>();
            array.add(error);
            array.add(pretime);
            //System.out.println(pretime[0]);
            return array;
        }
        else return new ArrayList<>();
    }

    @RequestMapping(value = "/SVM", method = RequestMethod.POST)
    public @ResponseBody int[] SVMmodel(int resultNum, int inputNum){
        if (IDs != null && Ts != null) {
            String[] args = new String[]{
                    "python", modelFilePath + "C-SVR\\C-SVR.py", Ts,
                    String.valueOf(trainNUM),
                    String.valueOf(resultNum),
                    String.valueOf(inputNum)
            };
            List<String> result = pythonProcess(args);
            int[] pre_result = new int[result.size()];
            for (int i=0;i<result.size();i++){
                pre_result[i] = Integer.valueOf(result.get(i));
            }
            return pre_result;
        }
        else return new int[]{};
    }

    @RequestMapping(value = "/UY", method = RequestMethod.POST)
    public @ResponseBody double[][] UYdig(int modelID){
        if (IDs != null && Ts != null) {
            if (jmModel == null){
                this.JMmodel();
            }
            if (goModel == null){
                this.GOmodel();
            }
            double min;
            int L = IDd.length;
            int n = L - trainNUM;
            double[] U_X = new double[n];
            double[] Y = new double[n];
            double[] Y_X = new double[n];

            //U图
            if (modelID == 1){  //JM模型
                for (int i=0;i<n;i++ ){
                    U_X[i] = (jmModel.F(Td[i+trainNUM]));
                    Y[i] = Double.valueOf(i)/Double.valueOf(n);
                }
            }
            else if (modelID == 2){ //GO模型
                min = Double.MIN_VALUE;
                for (int i=0;i<n;i++ ){
                    U_X[i] = (goModel.F(Td[i+trainNUM]));
                    if (U_X[i] == 0) {
                        U_X[i] = min;
                        min += Double.MIN_VALUE;
                    }
                    //System.out.println(U_X[i]);
                    Y[i] = Double.valueOf(i)/Double.valueOf(n);
                }
            }
            else
                return new double[][]{};
            Arrays.sort(U_X);

            //Y图
            double sum = 0;
            min = Double.MIN_VALUE;
            for (int i=0;i<n;i++){
                Y_X[i] = -Math.log(1-U_X[i]);
                if (Y_X[i] == 0) {
                    Y_X[i] = min;
                    min += Double.MIN_VALUE;
                }
                //System.out.println(Y_X[i]);
                sum += Y_X[i];
            }
            double tmpSum = 0;
            for (int i=0;i<n;i++){
                tmpSum += Y_X[i];
                Y_X[i] = tmpSum/sum;
            }
            //System.out.println(sum);
            return new double[][]{U_X, Y, Y_X};
        }
        else return new double[][]{};
    }

    @RequestMapping(value = "/PLR", method = RequestMethod.POST)
    public @ResponseBody double[][] PLR(){
        if (IDs != null && Ts != null) {
            if (jmModel == null){
                this.JMmodel();
            }
            if (goModel == null){
                this.GOmodel();
            }
            int n = IDd.length - trainNUM;
            double[] PLA = new double[n];
            double[] PLB = new double[n];
            double[] PL = new double[n];
            double[] tmp = new double[n];
            for (int i=0;i<n;i++)
                tmp[i] = Td[i+trainNUM];
            Arrays.sort(tmp);

            for (int i=0;i<n;i++){
                PLA[i] = jmModel.f(tmp[i]);
                PLB[i] = goModel.f(tmp[i]);
                if (PLB[i] == 0)
                    PLB[i] = Double.MIN_VALUE;
                PL[i] = PLA[i]/PLB[i];
                if (PL[i] == Double.POSITIVE_INFINITY)
                    PL[i] = Double.MAX_VALUE;
            }
            return new double[][]{tmp, PLA, PLB, PL};
        }
        else return new double[][]{};
    }

    @RequestMapping(value = "/JMF", method = RequestMethod.POST)
    public @ResponseBody double[][] JMF(){
        double[] t = new double[500];
        double[] F = new double[500];
        if (jmModel == null)
            return new double[][]{};

        for (int i=0;i<500;i++){
            t[i] = i;
            F[i] = jmModel.F(i);
        }
        return new double[][]{t, F};
    }

    @RequestMapping(value = "/GOF", method = RequestMethod.POST)
    public @ResponseBody double[][] GOF(){
        double[] t = new double[500];
        double[] F = new double[500];
        if (goModel == null)
            return new double[][]{};

        for (int i=0;i<500;i++){
            t[i] = i;
            F[i] = goModel.F(i);
        }
        return new double[][]{t, F};
    }

    @RequestMapping(value = "/getRealData", method = RequestMethod.POST)
    public @ResponseBody double[] getData(int preNUM){
        double[] tmp = new double[trainNUM+preNUM];
        for (int i=0;i<trainNUM+preNUM;i++)
            tmp[i] = Td[i];
        return tmp;
    }

    @RequestMapping(value = "/getAllData", method = RequestMethod.POST)
    public @ResponseBody double[] getAllData(){
        return Td;
    }
}
