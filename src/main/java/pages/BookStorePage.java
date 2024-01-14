package pages;

import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.Selenide.$;

public class BookStorePage {
    public SelenideElement loginButton = $(By.id("login"));
    public SelenideElement profileButton = $(By.id("Profile"));
    public SelenideElement searchInputField = $(By.id("searchBox"));
    public SelenideElement titleHeaderButton = $x("//div[text() ='Title']");
    public SelenideElement authorHeaderButton = $x("//div[text() ='Author']");
    public SelenideElement publisherHeaderButton = $x("//div[text() ='Publisher']");
    public ElementsCollection booksCollection = $$(By.cssSelector("[class ='rt-tr-group']"));
    public ElementsCollection booksTitle = $$(By.className("action-buttons"));
    public ElementsCollection booksAuthor = $$x("//div[@class='rt-td'][3]");
    public ElementsCollection booksPublisher = $$x("//div[@class='rt-td'][4]");
    public SelenideElement bookStoreHeader = $("[class='main-header']");
}
