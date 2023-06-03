
document.forms[0].onsubmit = async (e) => {
    e.preventDefault();
    
    let employeeName = document.getElementById('employee_name').value;
    try {
        const result = await fetch(`/employee/${employeeName.toString()}`);
        console.log(employeeName);
        console.log(result);
        if (!result.ok) {
            const error = document.getElementById('error');
            error.style.visibility = 'visible';
        }
        else {
            window.location.assign(`http://localhost:3000/employee/${employeeName}`);
        }
    } catch (err) {
        error.innerText = "Connection lost";
        error.style.visibility = 'visible';
        error.style.width = '150px';
        console.error(err);
    }

}