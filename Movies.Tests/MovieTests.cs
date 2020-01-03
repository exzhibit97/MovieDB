using Movies.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xunit;

namespace Movies.Tests
{
    public class MovieTests
    {
        [Fact]
        public void AddReview_ShouldAddReview()
        {
            //Arrange
            var movie = new Movie();

            //Act
            movie.AddReview(new Review());

            //Assert
            Assert.Single(movie.Reviews);
        }

        [Fact]
        public void AddReview_ShouldThrowArgumentNullException_DueToArgumentBeingNull()
        {
            //Arrange
            var movie = new Movie();

            //Act
            var ex = Assert.Throws<ArgumentNullException>(() => movie.AddReview(null));

            //Assert
            Assert.Equal("Value cannot be null.", ex.Message);
        }

        [Fact]
        public void DeleteReview_ShouldNotBeAbleToGetReview_DueToEmptyList()
        {
            //Arrange
            var movie = new Movie();
            var review = new Review();

            //Act
            var ex = Assert.Throws<InvalidOperationException>(() => review = movie.Reviews.First());

            //Assert
            Assert.Equal("Sequence contains no elements", ex.Message);

        }

        [Fact]
        public void DeleteReview_ShouldNotBeAbleToRemoveReview_DueToEmptyList()
        {
            //Arrange
            var movie = new Movie();
            var review = new Review();

            //Act
            var ex2 = Assert.Throws<InvalidOperationException>(() => movie.DeleteReview(movie.Reviews.First().Id));

            //Assert
            Assert.Equal("Sequence contains no elements", ex2.Message);
        }

        [Fact]
        public void TestSomething()
        {

        }


    }
}
