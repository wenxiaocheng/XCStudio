package unit;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropValuesConfig {
    InputStream inputStream = null;
    Properties prop = null;

    public Properties getPropValues(String path) {
        try {
            prop = new Properties();
            String propFilePath = path;

            inputStream = getClass().getClassLoader().getResourceAsStream(propFilePath);

            if (inputStream != null) {
                prop.load(inputStream);
            } else {
                throw new FileNotFoundException("配置文件 '" + propFilePath + "没有找到");
            }

        } catch (Exception e) {
            System.out.println("异常: " + e);
        } finally {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return prop;
    }
}
