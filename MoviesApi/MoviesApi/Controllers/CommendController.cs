using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MoviesApi.Data;
using MoviesApi.Dtos;
using MoviesApi.Entities;

namespace MoviesApi.Controllers;


[Route("api/[controller]")]
[ApiController]
public class CommendController (MainDbContext dbContext): ControllerBase
{
    private readonly MainDbContext _dbContext = dbContext;
    private static CommendEntity ToEntity(CreateCommendDto commendDto)
    {
        return new CommendEntity
        {
            MovieId = commendDto.MovieId,
            UserId = commendDto.UserId,
            Text = commendDto.Text
        };
    }
    
    [HttpGet]
    public async Task<ActionResult> ListCommend()
    {
        var commends = await _dbContext.Commends.ToListAsync();
        return Ok(commends);
    }
    [HttpGet("{id}")]
    public async Task<ActionResult> GetCommend(Guid id)
    {
        var commend = await _dbContext.Commends.FirstOrDefaultAsync(x => x.Id == id);
        if (commend == null)
        {
            return NotFound();
        }
        return Ok(commend);
    }
    [HttpPost]
    public async Task<ActionResult> CreateCommend(CreateCommendDto dto)
    {
        var commend = ToEntity(dto);
        await _dbContext.Commends.AddAsync(commend);
        await _dbContext.SaveChangesAsync();
        return CreatedAtAction(nameof(GetCommend), new {id = commend.Id}, commend);
    }

}