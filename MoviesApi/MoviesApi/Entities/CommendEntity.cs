namespace MoviesApi.Entities;

public class CommendEntity
{
   public Guid Id { get; set; } = Guid.NewGuid();
   public Guid MovieId { get; set; } = Guid.Empty;
   public Guid UserId { get; set; } = Guid.Empty;
   public string Text { get; set; } = string.Empty;
   public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
   
   public virtual MovieEntity Movie { get; set; } = null!;
   public virtual UserEntity User { get; set; } = null!;
}