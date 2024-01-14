package runners;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/features",
        glue = {"steps", "hooks"}
        //tags = "@login"
        //tags = "@addAndDeleteAllBooks"
        //tags = "@search_Books"
        //tags = "@addAndDeleteOneBook"
        //tags = "@sort_books"
        //tags = "@deleteAccount"
        //tags = "@logout"
        //tags = "@sort_books_authorized_user"
        //tags = "@search_books_authorized_user"
        //tags = "@registration_withoutReCaptcha"

)

public class RunnerTest {

}
