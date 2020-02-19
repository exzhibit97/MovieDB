using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Interactions;
using Xunit;

namespace Desktop
{

    public class UnitTest1
    {
        [Theory]
        [InlineData("asd@asd.pl", "Fdasfasd@1234")]
        [InlineData("asd@", "Fdasfasd@123")]
        [InlineData("", "")]
        [InlineData("asd@asd.pl", "Fdasfasd@123")]
        public void TestLogin(string login, string password)
        {
            IWebDriver driver = new ChromeDriver();
            driver.Navigate().GoToUrl("https://localhost:44318/Account/Login");
            driver.FindElement(By.Id("Email")).SendKeys(login);
            driver.FindElement(By.Id("Password")).SendKeys(password);
            driver.FindElement(By.Id("login_btn")).Click();

            Assert.Equal("Home Page - MovieDB", driver.Title);
            driver.Close();

        }

        [Theory]
        [InlineData("@")]
        [InlineData("asd@")]
        [InlineData("asd")]
        [InlineData("asd@asd")]
        [InlineData("asd@asd.")]
        [InlineData("@asd.")]
        [InlineData("@asd")]
        [InlineData("@asd.pl")]
        [InlineData("asd@asd.pl")]
        public void TestWhichEmailCausesValidationError(string InlineData)
        {
            IWebDriver driver = new ChromeDriver();
            driver.Navigate().GoToUrl("https://localhost:44318/Account/Login");
            driver.FindElement(By.Id("Email")).SendKeys(InlineData);
            driver.FindElement(By.Id("Password")).SendKeys("123");
            string HeaderTxt = driver.FindElement(By.XPath("//span[@id = 'Email-error']")).Text;
            string Expected = "The Email field is not a valid e-mail address.";

            driver.Close();
            Assert.Equal(HeaderTxt.ToLower(), Expected.ToLower());
        }

        [Fact]
        public void TestIfCommentWillBeAddedProperly()
        {
            var date = DateTime.Now;
            IWebDriver driver = new ChromeDriver();

            driver.Navigate().GoToUrl("https://localhost:44318/Account/Login");
            driver.FindElement(By.Id("Email")).SendKeys("asd@asd.pl");
            driver.FindElement(By.Id("Password")).SendKeys("Fdasfasd@123");
            driver.FindElement(By.Id("login_btn")).Click();
            driver.FindElement(By.Id("30")).Click();
            driver.FindElement(By.Id("Content")).SendKeys("Amazing movie" + date);
            driver.FindElement(By.Name("Rating"));

            IWebElement slider = driver.FindElement(By.Id("slider"));
            Actions move = new Actions(driver);
            move.DragAndDropToOffset(slider, 200, 0).Click().Perform();
            driver.FindElement(By.Id("addReview")).Click();
            string xPath = "//*[contains(text(), 'Amazing movie" + date + "')]";
            string commentText = driver.FindElement(By.XPath(xPath)).Text;
            var sliderVal = driver.FindElement(By.Id("slider")).GetAttribute("value");
            driver.Close();

            Assert.Equal("5", sliderVal);
            // Assert.Equal("Amazing movie"+date, commentText);
        }

        [Theory]
        [InlineData("", "", "", "")]
        [InlineData("title", "year", "runtime", "description")]
        [InlineData("Movie", "2020", "150", "description")]
        public void MovieCreateFormTest(string title, string year, string runtime, string description)
        {
            IWebDriver driver = new ChromeDriver();
            driver.Navigate().GoToUrl("https://localhost:44318/Account/Login");
            driver.FindElement(By.Id("Email")).SendKeys("admin@movies.com");
            driver.FindElement(By.Id("Password")).SendKeys("Admin@123");
            driver.FindElement(By.Id("login_btn")).Click();
            driver.Navigate().GoToUrl("https://localhost:44318/Movies");
            driver.FindElement(By.Id("create")).Click();
            driver.FindElement(By.Id("Title")).SendKeys(title);
            driver.FindElement(By.Id("Runtime")).SendKeys(runtime);
            driver.FindElement(By.Id("Year")).SendKeys(year);
            // driver.FindElement(By.Id("poster-input")).SendKeys("Admin@123");
            driver.FindElement(By.Id("Description")).SendKeys(description);
            driver.FindElement(By.Id("submitCreation")).Click();
            
            Assert.Equal("All movies - MovieDB", driver.Title);
            driver.Close();
        }
    }
}
