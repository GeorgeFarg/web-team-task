let profile = document.getElementById("profile");
let details = document.getElementById("details");
let list = document.getElementById('list');

const requests = JSON.parse(request);

const showDetails = (e) => {
    console.log("clicked");
    // details.classList.toggle('visible');
}

function loadData(requests) {
    for (let i = 0; i < requests.length; i++) {
        list.innerHTML +=  `
            <li class="request">
                <div id="profile_${requests[i].employee_id.id}" class="profile">
                    <img class="profile_img" src="${requests[i].employee_id.profile_img}" alt="profile ${requests[i].employee_id.id}">
                    <h3>${requests[i].employee_id.name}</h3>
                </div>
                <div id="details_${requests[i].employee_id.id}" class="details">
                    <div class="text">
                        <h4>${requests[i].title}</h4>
                        <p>
                            ${requests[i].text}
                        </p>
                    </div>
                    <div class="choice">
                        <div class="duration">
                            <p>Duration requested: ${requests[i].duration_requested}</p>
                        </div>
                        <div class="buttons">
                            <button id="g-${requests[i].employee_id.id}" class="grand button">👌 Grand</button>
                            <button id="r-${requests[i].employee_id.id}" class="reject button">❌ Reject</button>
                        </div>
                    </div>
                </div>
            </li>
        `;
    }


    for (let i = 0; i < list.children.length; i++) {
        const id = list.children[i].children[0].id;
        const idNum = +id.slice(8);
        list.children[i].children[0].onclick = (e) => {
            document.getElementById(`details_${idNum}`).classList.toggle('visible');
        }

    }
};

loadData(requests);


function grand(e) {
    const id = list.children[i].children[0].id;
    const idNum = +id.slice(8);
}