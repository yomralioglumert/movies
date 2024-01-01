using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MoviesApi.Data;
using MoviesApi.Dtos;
using MoviesApi.Entities;

namespace MoviesApi.Controllers;


[Route("api/[controller]")]
[ApiController]
public class MovieController(MainDbContext dbContext) : ControllerBase
{
    private readonly MainDbContext _dbContext = dbContext;

    private static MovieEntity ToEntity(CreateMovieDto movieDto)
    {
        return new MovieEntity
        {
            Description = movieDto.Description,
            Name = movieDto.Name,
            Url = movieDto.Url
        };
    }
    [HttpGet]
    public async Task<ActionResult> ListMovie()
    {
        var movies = await _dbContext.Movies.ToListAsync();
        return Ok(movies);
    }
    [HttpGet("{id}")]
    public async Task<ActionResult> GetMovie(Guid id)
    {
        var movie = await _dbContext.Movies.FirstOrDefaultAsync(x => x.Id == id);
        if (movie == null)
        {
            return NotFound();
        }
        return Ok(movie);
    }
    [HttpPost]
    public async Task<ActionResult> CreateMovie(CreateMovieDto dto)
    {
        var movie = ToEntity(dto);
        await _dbContext.Movies.AddAsync(movie);
        await _dbContext.SaveChangesAsync();
        return CreatedAtAction(nameof(GetMovie), new {id = movie.Id}, movie);
    }
    
    [HttpPut("{id}")]
    public async Task<ActionResult> UpdateMovie(Guid id, MovieEntity movie)
    {
        if (id != movie.Id)
        {
            return BadRequest();
        }
        _dbContext.Entry(movie).State = EntityState.Modified;
        await _dbContext.SaveChangesAsync();
        return NoContent();
    }
}