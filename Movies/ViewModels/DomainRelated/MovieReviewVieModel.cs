using Movies.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Movies.Web.ViewModels.DomainRelated
{
    public class MovieReviewVieModel
    {
        public Movie Movie { get; set; }
        public Review Review { get; set; }
    }
}
