using System;
using System.Collections.Generic;
using System.Text;
using Movies.Shared;

namespace Movies.Domain.Models
{
    public class Movie : BaseEntity
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int Runtime { get; set; }
        public int Year { get; set; }
        public string PosterPath { get; set; }
        public string Description { get; set; }

        public decimal Price { get; set; }

        public List<Review> Reviews { get; set; }

        public Movie(string title, int runtime, int year, string posterPath, string description, decimal price, List<Review> reviews)
        {
            Title = title;
            Runtime = runtime;
            Year = year;
            PosterPath = posterPath;
            Description = description;
            Price = price;
            Reviews = reviews;
        }

        public Movie()
        {
            Reviews = new List<Review>();
        }
               

        public void AddReview(Review review)
        {
            if (review == null)
            {
                throw new ArgumentNullException();
            }
            Reviews.Add(review);
        }

        public void DeleteReview(int id)
        {
            var reviewToDelete = Reviews.Find(r => r.Id == id);
            Reviews.Remove(reviewToDelete);
        }

        public void SetPrice(decimal price)
        {
            if (price < 0)
            {
                throw new ArgumentException();
            }
            this.Price = price;
        }


        public IEnumerable<Review> GetReviews() => Reviews;

        //added 01.05.2020
        public void SetDiscount(decimal discountRate)
        {
            decimal discount = (discountRate / 100) * this.Price;
            this.Price -= discount;
        }

        protected bool Equals(Movie other)
        {
            return Id == other.Id && Title == other.Title && Runtime == other.Runtime && Year == other.Year && PosterPath == other.PosterPath && Description == other.Description && Equals(Reviews, other.Reviews);
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((Movie)obj);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                var hashCode = Id;
                hashCode = (hashCode * 397) ^ (Title != null ? Title.GetHashCode() : 0);
                hashCode = (hashCode * 397) ^ Runtime;
                hashCode = (hashCode * 397) ^ Year;
                hashCode = (hashCode * 397) ^ (PosterPath != null ? PosterPath.GetHashCode() : 0);
                hashCode = (hashCode * 397) ^ (Description != null ? Description.GetHashCode() : 0);
                hashCode = (hashCode * 397) ^ (Reviews != null ? Reviews.GetHashCode() : 0);
                return hashCode;
            }
        }
    }
}
