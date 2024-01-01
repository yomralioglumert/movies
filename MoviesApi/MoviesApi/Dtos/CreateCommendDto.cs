namespace MoviesApi.Dtos;

public class CreateCommendDto
{
    public Guid MovieId { get; set; } = Guid.Empty;
    public Guid UserId { get; set; } = Guid.Empty;
    public string Text { get; set; } = string.Empty;
}