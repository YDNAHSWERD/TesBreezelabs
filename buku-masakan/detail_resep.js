document.addEventListener('DOMContentLoaded', function() {
    const params = new URLSearchParams(window.location.search);
    const recipeId = params.get('id');

    fetch(`get_recipe_detail.php?id=${recipeId}`)
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            document.getElementById('recipe-name').textContent = data.recipe.name;
            document.getElementById('recipe-photo').src = data.recipe.photo;
            document.getElementById('recipe-type').textContent = `Type: ${data.recipe.type}`;
            document.getElementById('recipe-rating').textContent = `Rating: ${data.recipe.rating}`;
            document.getElementById('recipe-difficulty').textContent = `Difficulty: ${data.recipe.difficulty}`;
            
            const ingredients = data.recipe.ingredients.split(', ');
            const ingredientsList = document.getElementById('recipe-ingredients');
            ingredients.forEach(ingredient => {
                const li = document.createElement('li');
                li.textContent = ingredient;
                ingredientsList.appendChild(li);
            });

            const instructions = data.recipe.instructions.split('\n');
            const instructionsList = document.getElementById('recipe-instructions');
            instructions.forEach(instruction => {
                const li = document.createElement('li');
                li.textContent = instruction;
                instructionsList.appendChild(li);
            });
        } else {
            alert('Recipe not found.');
            window.location.href = 'resep.html';
        }
    });
});
