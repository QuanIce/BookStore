using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace BookStore.Models
{
    public class Product
    {
        public int Id { get; set; }

        [Required]
        [Display(Name = "Title")]
        [StringLength(50, ErrorMessage = "Title must between 6 to 50 characters ", MinimumLength = 6)]
        public string Title { get; set; }
        public string Image { get; set; }
        public string Author { get; set; }
        public int Quantity { get; set; }

        [Required]
        [Display(Name = "Description")]
        [StringLength(3000, ErrorMessage = "Description must between 15 to 3000 characters ", MinimumLength = 15)]
        public string Description { get; set; }


        [Required]
        [Display(Name = "Price")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C}")]
        [Range(0.0, double.MaxValue, ErrorMessage = "Price must be greater than 0")]
        public double Price { get; set; }
    }
}
