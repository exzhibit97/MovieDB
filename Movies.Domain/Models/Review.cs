using System;
using System.Collections.Generic;
using System.Text;

namespace Movies.Domain.Models
{
    public class Review
    {
        public int ReviewId { get; set; }
        public string Content { get; set; }
        public int Rating { get; set; }
        public DateTime PostedOn { get; set; }

        public int MovieId { get; set; }
        public Movie Movie { get; set; }

        public Review()
        {

        }

        protected bool Equals(Review other)
        {
            return ReviewId == other.ReviewId && Content == other.Content && Rating == other.Rating && PostedOn.Equals(other.PostedOn) && MovieId == other.MovieId && Movie.Equals(other.Movie);
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
                var hashCode = ReviewId;
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
