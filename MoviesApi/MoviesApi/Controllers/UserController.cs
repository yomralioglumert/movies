

using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MoviesApi.Data;
using MoviesApi.Entities;

namespace MoviesApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class UserController(MainDbContext dbContext) : ControllerBase
{       
    private readonly MainDbContext _dbContext = dbContext; 
    
    [HttpGet]
    public async Task<ActionResult> ListUser()
    {
        var users = await _dbContext.Users.ToListAsync();
        return Ok(users);
    }
    
    [HttpGet("{id}")]
    public async Task<ActionResult> GetUser(Guid id)
    {
        var user = await _dbContext.Users.FirstOrDefaultAsync(x => x.Id == id);
        if (user == null)
        {
            return NotFound();
        }
        return Ok(user);
    }
    [HttpPost]
    public async Task<ActionResult> CreateUser(UserEntity user)
    {
        await _dbContext.Users.AddAsync(user);
        await _dbContext.SaveChangesAsync();
        return CreatedAtAction(nameof(GetUser), new {id = user.Id}, user);
    }
    [HttpPut("{id}")]
    public async Task<ActionResult> UpdateUser(Guid id, UserEntity user)
    {
        if (id != user.Id)
        {
            return BadRequest();
        }
        _dbContext.Entry(user).State = EntityState.Modified;
        await _dbContext.SaveChangesAsync();
        return NoContent();
    }
}