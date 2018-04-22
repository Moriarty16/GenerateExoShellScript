import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class GenerateShell {
    public static void main(String[] args) throws IOException {
        File script = new File("RunWholeExo.sh");
        if (!script.exists()) {
            script.createNewFile();
        }

        FileWriter fileWriter = new FileWriter(script);
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

        bufferedWriter.write("#!/bin/bash");
    }
}
