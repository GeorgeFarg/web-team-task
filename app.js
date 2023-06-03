import express from 'express';
const app = express();
import { prisma } from "./script.js";

app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(express.json());

  
app.get('/employee/:employee_name', async (req, res) => {
    const name = req.params.employee_name;
    
    const employee = await prisma.Employees.findFirst({
        where :{
            name
        }, 
    });
    if (!employee) {
        return res.status(400).send("not found");
    }

    res.render('employee_form', {name, employees_Id: employee.id});
});

app.post('/request', async (req, res) => {
    try {
        const {employee_id, title, text, duration_requested} = req.body;
        const insertedEmployee = await prisma.Requests.create({
            data: {
                title,
                text,
                duration_requested: +duration_requested,
                employee_id: {
                    connect : { id: +employee_id}
                },
                manager_id: {
                    connect: {id: 1}
                }
            }
        });
        
        console.log(insertedEmployee);

        if (!insertedEmployee) {
            return res.status(400).send("User not inserted");
        }
        res.send("user inserted");
    } catch (err) {
        console.error(err);
    }
});

app.get('/manager',async (req, res) => {
    // fetch requests for manager 1
    try {
        let requests = await prisma.requests.findMany({
            where:{
                managers_Id: 1
            },
            select: {
                id: true,
                duration_requested: true,
                title: true,
                text: true,
                employee_id: {
                    select: {
                        id: true,
                        name: true,
                        profile_img: true,
                    }
                }
            },
        });

        // console.log(requests);
        res.render('manager', {requests: requests});

    } catch (err) {
        console.error(err);
        res.status(400).send("not fetched");
    }
});

app.post("/employee",async (req, res) => {
    
    const {salary} = req.body;
        const user = await prisma.Employees.create({
            data: {...req.body, salary: +salary},
        })
        if (user){
            console.log(user);
            res.send('inserted');
        }
});

app.listen(3000, () => {
  console.log('Server started on port 3000');
});
