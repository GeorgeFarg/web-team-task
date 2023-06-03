document.forms[0].onsubmit = async (e) => {
    e.preventDefault();
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const job_title = document.getElementById('Job title').value;
    const salary = document.getElementById('salary').value;
    const phone = document.getElementById('phone').value;
    let data = {name, email, job_title, salary, phone };
    try {
        
        const response = await fetch('http://localhost:3000/employee', {
            method: 'POST',
            body: JSON.stringify(data),
            headers: {
              'Content-Type': 'application/json'
            }
        })
        let message = document.getElementById("message");
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