document.addEventListener('DOMContentLoaded', function() {
    fetch('session.php')
    .then(response => response.json())
    .then(data => {
        if (data.loggedIn) {
            document.getElementById('username').textContent = data.username;
            fetchRecipes();
        } else {
            window.location.href = 'login.html';
        }
    });

    function fetchRecipes() {
        fetch('get_recipes.php')
        .then(response => response.json())
        .then(data => {
            const recipeList = document.getElementById('recipe-list');
            recipeList.innerHTML = ''; // Clear previous content

            if (data.recipes && data.recipes.length > 0) {
                data.recipes.forEach(recipe => {
                    const li = document.createElement('li');
                    li.textContent = recipe.name;
                    recipeList.appendChild(li);

                    li.addEventListener('click', () => {
                        window.location.href = `detail_resep.html?id=${recipe.id}`;
                    });
                });
            } else {
                recipeList.innerHTML = '<p>No recipes found.</p>';
            }
        });
    }
});
