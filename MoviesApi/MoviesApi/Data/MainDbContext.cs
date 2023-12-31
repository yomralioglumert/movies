using Microsoft.EntityFrameworkCore;
using MoviesApi.Entities;

namespace MoviesApi.Data;

public class MainDbContext : DbContext
{
    public MainDbContext(DbContextOptions<MainDbContext> options ) : base(options)
    {
        
    }

    public DbSet<UserEntity> Users { get; set; } 
    public DbSet<MovieEntity> Movies { get; set; } 
    public DbSet<CommendEntity> Commends { get; set; }
}