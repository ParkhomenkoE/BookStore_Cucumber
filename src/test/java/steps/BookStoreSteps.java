package steps;

import com.codeborne.selenide.SelenideElement;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import java.util.ArrayList;
import java.util.List;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$x;
import static java.util.Collections.reverseOrder;
import static java.util.Collections.sort;
import static org.junit.Assert.assertEquals;

public class BookStoreSteps extends BaseSteps {


    @When("^I input the title \"([^\"]*)\" in the search input field$")
    public void iInputTheTitleInTheInputField(String bookTitle) {
        bookStorePage.searchInputField.scrollTo().shouldBe(visible).setValue(bookTitle);
    }

    @Then("^I see the book \"([^\"]*)\" in Book Store Catalog$")
    public void iSeeOnlyTheBookInBookStoreCatalog(String bookTitle) {
        for (SelenideElement title : bookStorePage.booksTitle.filter(not(empty))) {
            title.shouldBe(visible).shouldHave(text(bookTitle));
        }
    }


    @When("^I input the author \"([^\"]*)\" in the search input field$")
    public void iInputTheAuthorInTheSearchInputField(String author) {
        bookStorePage.searchInputField.shouldBe(visible).setValue(author);
    }

    @Then("^I see book by author \"([^\"]*)\" in Book Store Catalog$")
    public void iSeeBookByAuthorInBookStoreCatalog(String authorName) {
        for (SelenideElement author : bookStorePage.booksAuthor.filter(not(empty))) {
            author.shouldBe(visible).shouldHave(text(authorName));
        }
    }

    @When("^I input the publisher \"([^\"]*)\" in the search input field$")
    public void iInputThePublisherInTheSearchInputField(String publisher) {
        bookStorePage.searchInputField.shouldBe(visible).setValue(publisher);
    }

    @Then("^I see only the books by publisher \"([^\"]*)\" in Book Store Catalog$")
    public void iSeeOnlyTheBooksByPublisherInBookStoreCatalog(String publisher) {
        for (SelenideElement pubName : bookStorePage.booksPublisher.filter(not(empty))) {
            pubName.shouldBe(visible).shouldHave(text(publisher));
        }
    }

    @Then("^I am on the Book Store Page$")
    public void iAmOnTheBookStorePage() {
        bookStorePage.bookStoreHeader.shouldBe(visible).shouldHave(text("Book Store"));
    }

    @When("^I click the \"([^\"]*)\" Title Link$")
    public void iClickTheTitleLink(String title) {
        $x("//*[text()='"+ title +"']").scrollTo().shouldBe(visible).click();
    }


    @When("^I click the Title Header$")
    public void iClickTheTitleHeader() {
        bookStorePage.titleHeaderButton.shouldBe(visible).click();
    }

    @Then("^Books sorted in A_Z order$")
    public void BooksSortedInA_ZOrder() {
        List<String> actualTitleSorting = bookStorePage.booksTitle.filter(not(empty)).texts();
        List<String> expectedTitleSorting = new ArrayList<>(actualTitleSorting);
        sort(expectedTitleSorting);
        assertEquals(expectedTitleSorting, actualTitleSorting);
    }

    @When("^I second click the Title Header$")
    public void iSecondClickTheTitleHeader() {
        bookStorePage.titleHeaderButton.shouldBe(visible).doubleClick();
    }

    @Then("^Books sorted in Z_A order$")
    public void booksSortedInZ_AOrder() {
        List<String> actualTitleSorting = bookStorePage.booksTitle.filter(not(empty)).texts();
        List<String> expectedTitleSorting = new ArrayList<>(actualTitleSorting);
        expectedTitleSorting.sort(reverseOrder());
        assertEquals(expectedTitleSorting, actualTitleSorting);
    }

    @When("^I click the Author Header$")
    public void iClickTheAuthorHeader() {
        bookStorePage.authorHeaderButton.shouldBe(visible).click();
    }

    @Then("^Books sorted by author in A_Z order$")
    public void booksSortedByAuthorInA_ZOrder() {
        List<String> actualAuthorSorting = bookStorePage.booksAuthor.filter(not(empty)).texts();
        List<String> expectedTitleSorting = new ArrayList<>(actualAuthorSorting);
        sort(expectedTitleSorting);
        assertEquals(expectedTitleSorting, actualAuthorSorting);
    }

    @When("^I second click the Author Header$")
    public void iSecondClickTheAuthorHeader() {
        bookStorePage.authorHeaderButton.shouldBe(visible).doubleClick();
    }

    @Then("^Books sorted by author in Z_A order$")
    public void booksSortedByAuthorInZ_AOrder() {
        List<String> actualAuthorSorting = bookStorePage.booksAuthor.filter(not(empty)).texts();
        List<String> expectedAuthorSorting = new ArrayList<>(actualAuthorSorting);
        expectedAuthorSorting.sort(reverseOrder());
        assertEquals(expectedAuthorSorting, actualAuthorSorting);
    }

    @When("^I click the Publisher Header$")
    public void iClickThePublisherHeader() {
        bookStorePage.publisherHeaderButton.shouldBe(visible).click();
    }

    @Then("^Books sorted by publisher in A_Z order$")
    public void booksSortedByPublisherInA_ZOrder() {
        List<String> actualPublisherSorting = bookStorePage.booksPublisher.filter(not(empty)).texts();
        List<String> expectedPublisherSorting = new ArrayList<>(actualPublisherSorting);
        sort(expectedPublisherSorting);
        assertEquals(expectedPublisherSorting, actualPublisherSorting);
    }

    @When("^I second click the Publisher Header$")
    public void iSecondClickThePublisherHeader() {
        bookStorePage.publisherHeaderButton.shouldBe(visible).doubleClick();
    }

    @Then("^Books sorted by publisher in Z_A order$")
    public void booksSortedByPublisherInZ_AOrder() {
        List<String> actualAuthorSorting = bookStorePage.booksPublisher.filter(not(empty)).texts();
        List<String> expectedAuthorSorting = new ArrayList<>(actualAuthorSorting);
        expectedAuthorSorting.sort(reverseOrder());
        assertEquals(expectedAuthorSorting, actualAuthorSorting);
    }

    @When("^I click the Login button on the Book Store page$")
    public void iClickTheLoginButtonOnTheBookStorePage() {
        bookStorePage.loginButton.shouldBe(visible).click();
    }

    @When("^I follow \"([^\"]*)\" book link$")
    public void iFollowBookLink(int index) {
        bookStorePage.booksTitle.filter(not(empty)).get(index-1).scrollTo().click();
    }


    @When("^I click Profile button in sideBar$")
    public void iClickProfileButtonInSideBar() {
        bookStorePage.profileButton.shouldBe(visible).click();
    }
}
