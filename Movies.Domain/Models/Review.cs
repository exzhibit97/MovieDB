using Movies.Shared;
using System;
using System.Collections.Generic;
using System.Text;
using Movies.Infrastructure.Data;

namespace Movies.Domain.Models
{
    public class Review : BaseEntity
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public int Rating { get; set; }
        public DateTime PostedOn { get; set; }
        public int MovieId { get; set; }
        public Movie Movie { get; set; }
        public ApplicationUser User { get; set; }
        public string UserID { get; set; }

        public Review()
        {

        }

        public Review(int Id, string Content, int Rating, DateTime PostedOn, int MovieId, Movie movie)
        {
            this.Id = Id;
            this.Content = Content;
            this.Rating = Rating;
            this.PostedOn = PostedOn;
            this.MovieId = MovieId;
            this.Movie = movie;
        }

        protected bool Equals(Review other)
        {
            return Id == other.Id && Content == other.Content && Rating == other.Rating && PostedOn.Equals(other.PostedOn) && MovieId == other.MovieId && Movie.Equals(other.Movie);
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((Review) obj);
        }

        public override int GetHashCode()
        {
            unchecked
            {
                var hashCode = Id;
                hashCode = (hashCode * 397) ^ Content.GetHashCode();
                hashCode = (hashCode * 397) ^ Rating;
                hashCode = (hashCode * 397) ^ PostedOn.GetHashCode();
                hashCode = (hashCode * 397) ^ MovieId;
                hashCode = (hashCode * 397) ^ Movie.GetHashCode();
                return hashCode;
            }
        }
    }
}
