using Movies.Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Movies.Web.ViewModels.DomainRelated
{
    public class MovieAvgRating
    {

        public Movie Movie { get; set; }
        public double Rating { get; set; }
    }
}
