using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBlogger.Models
{
    public class Post
    {
         public int Id { get; set; }
         public int UserId { get; set; }
         public string Title { get; set; }
         public string Slug { get; set; }
         public int NoOfViews { get; set; }
         public string Image { get; set; }
         public string Body { get; set; }
         public int Published { get; set; }
         public DateTime CreatedOn { get; set; }
         public Nullable<DateTime> UpdatedOn { get; set; }
    }
}