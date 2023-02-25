namespace BookStore.Models
{
    public class Cart
    {
        public int Id { get; set; }
        public string Customer { get; set; }
        public DateTime OrderDate { get; set; }
        public int OrderQuantity { get; set; }
        public double Price { get; set; }
        public double OrderPrice { get; set; }
        public string OrderName { get; set; }
        public int Status { get; set; }
        public int ProductId { get; set; }
        public Product Product { get; set; }
    }
}
