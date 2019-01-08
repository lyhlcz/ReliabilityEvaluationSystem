package cn.lyh.RES.controller;

import cn.lyh.RES.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import cn.lyh.RES.entity.timeData;

@Controller
@RequestMapping("/model")
public class modelController {
    private String modelFilePath = "E:\\work\\软件可靠性\\ReliabilityEvaluationSystem\\src\\cn\\lyh\\RES\\modelFile\\";
    private String IDs;
    private String Ts;

    @Autowired
    private DataService dService;

    modelController(){
        IDs = null;
        Ts = null;
    }

    //调用进程执行python文件
    private List<String> pythonProcess(String[] cmdStr){
        try {
            Process process = Runtime.getRuntime().exec(cmdStr);
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line = null;
            List<String> result = new ArrayList<>();

            while ((line = in.readLine()) != null) {
                System.out.println(line);
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

    @RequestMapping(value = "/data", method = RequestMethod.POST)
    public @ResponseBody boolean loadData(String sqlName){
        List<timeData> tmp = dService.getData(sqlName);
        IDs = "";
        Ts = "";
        if (tmp != null){
            for (timeData d : tmp){
                IDs = IDs + d.getId() + " ";
                Ts = Ts + d.getT() + " ";
            }
            //System.out.println(IDs);
            return true;
        }
        else return false;
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
            String[] args = new String[]{"python", modelFilePath + "JM.py", IDs, Ts};
            List<String> result = pythonProcess(args);
            if (result.size() == 2) {
                //System.out.println(result.get(0));
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
            String[] args = new String[]{"python", modelFilePath + "GO.py", IDs, Ts};
            List<String> result = pythonProcess(args);
            if (result.size() == 2) {
                //System.out.println(result.get(0));
                return new String[]{result.get(0), result.get(1)};
            }
            else
                return new String[]{result.get(0)};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/BP", method = RequestMethod.POST)
    public @ResponseBody String[] BPmodel(){
        if (IDs != null && Ts != null) {
            return new String[]{"BP"};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/SVM", method = RequestMethod.POST)
    public @ResponseBody String[] SVMmodel(){
        if (IDs != null && Ts != null) {
            return new String[]{"SVM"};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/U", method = RequestMethod.POST)
    public @ResponseBody String[] Udig(){
        if (IDs != null && Ts != null) {
            return new String[]{"U"};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/Y", method = RequestMethod.POST)
    public @ResponseBody String[] Ydig(){
        if (IDs != null && Ts != null) {
            return new String[]{"Y"};
        }
        else return new String[]{""};
    }

    @RequestMapping(value = "/PLR", method = RequestMethod.POST)
    public @ResponseBody String[] PLR(){
        if (IDs != null && Ts != null) {
            return new String[]{"PLR"};
        }
        else return new String[]{""};
    }
}
