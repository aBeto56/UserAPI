namespace ProductAPI.Dtos
{
    public class Dto
    {
        public record ProductDto(string name, int Price, DateTime CreatedTime);

        public record CreateProductDto(string name, int Price);

        public record UpdateProductDto(string name, int Price , Guid id, DateTime CreatedTime);
    }
}
