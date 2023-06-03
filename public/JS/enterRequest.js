document.forms[0].onsubmit = async (e) => {
    e.preventDefault();
    const title = document.getElementById('title').value;
    const text = document.getElementById('desc').value;
    const duration_requested = document.getElementById('duration').value;
    let data = {employee_id, title, text, duration_requested};
    try {
        
        const response = await fetch('http://localhost:3000/request', {
            method: 'POST',
            body: JSON.stringify(data),
            headers: {
              'Content-Type': 'application/json'
            }
        })
        let message = document.getElementById("message");
        console.log(response);
        console.log(message);
        if(!response.ok)
        {
            message.classList.replace('good', 'bad');
            message.innerText = "👎 Not sent"
            message.style.visibility = "visible";
        }else {
            message.style.visibility = "visible";
        }
          
    } catch (err) {
        console.error(err);
    }
}

// employees_Id