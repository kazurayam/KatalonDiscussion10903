import com.kms.katalon.core.configuration.RunConfiguration
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

/**
 * Execute a batch file situated in the KS project directory.
 * @param batchFile (String) e.g. "myfile.bat"
 */
static void runBatchFile(String batchFile) {
  String bf = RunConfiguration.getProjectDir() + '/' + batchFile
  WebUI.comment("Running batch file: " + bf)
  Runtime.runtime.exec(bf)
}

runBatchFile "test.bat"