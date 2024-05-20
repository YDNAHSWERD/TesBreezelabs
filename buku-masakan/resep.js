document.addEventListener('DOMContentLoaded', function() {
    loadRecipes();

    document.getElementById('search').addEventListener('input', loadRecipes);
    document.getElementById('sort').addEventListener('change', loadRecipes);
    document.getElementById('tags').addEventListener('change', loadRecipes);

    function loadRecipes() {
        const search = document.getElementById('search').value;
        const sort = document.getElementById('sort').value;
        const tags = document.getElementById('tags').value;

        fetch(`get_recipes.php?search=${search}&sort=${sort}&tags=${tags}`)
        .then(response => response.json())
        .then(data => {
            const recipeList = document.getElementById('recipe-list');
            recipeList.innerHTML = '';

            if (data.recipes && data.recipes.length > 0) {
                data.recipes.forEach(recipe => {
                    const card = document.createElement('div');
                    card.className = 'recipe-card';
                    card.innerHTML = `
                        <img src="${recipe.photo}" alt="${recipe.name}">
                        <h3>${recipe.name}</h3>
                        <p>Type: ${recipe.type}</p>
                        <p>Rating: ${recipe.rating}</p>
                        <p>Difficulty: ${recipe.difficulty}</p>
                    `;
                    card.addEventListener('click', () => {
                        window.location.href = `detail_resep.html?id=${recipe.id}`;
                    });
                    recipeList.appendChild(card);
                });
            } else {
                recipeList.innerHTML = '<p>No recipes found.</p>';
            }
        });
    }
});
