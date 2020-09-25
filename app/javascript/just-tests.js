function newCard(name)
{
    return `
    <div class="card">
        <div class="card-header">
            <h3>` + name + `</h3>
        </div>
        <div contenteditable="true" class="card-description">
            <div class="task-textbox">
                <p>Bater um lol com os amigos e largar o dever de mat pra la.</p>
            </div>
        </div>
    </div>`;
}

var lastListId = 2;
function newList(name)
{
    lastListId++;
    return `
    <div class="list-wrapper">
        <div class="list">
            <div class="list-title todo">
                ` + name + `
                <div class="list-addcard"></div>
            </div>

            <div class="list-content">
                <div id="cardlist-` + lastListId +  `">

                </div>
                <div class="card-add" id="add-button-` + lastListId + `" onclick="addCard('Novo cartão');">+ Adicionar cartão</div>
            </div>
        </div>
    </div>`
}

function addCard(id, name)
{
    var button2 = document.getElementById("add-button-1");
    var button = document.getElementById(id);
    button.insertBefore(button, newCard(name));
}