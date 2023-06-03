import { faker } from '@faker-js/faker';
import { prisma } from '../script.js';
// I used this file to insert some dummy data using tje faker package

const jobs = ["developer", "UI/UX designer", "Instructor", "Server admin", "Network engineer"];



export function createRandomUser() {
  return {
    name: faker.person.fullName(),
    email: faker.internet.email(),
    profile_img: faker.image.avatar(),
    job_title: faker.helpers.arrayElement(jobs),
    salary: Math.floor(Math.random() * (7000 - 3000) + 3000),
    phone: faker.phone.number(),
};
}

const USERS = faker.helpers.multiple(createRandomUser, {
  count: 10,
});

try {
    const usersInserted = []

    for (let i = 0; i < 10; i++) {
        const user = await prisma.Employees.create({
            data: {
                name: faker.person.fullName(),
                email: faker.internet.email(),
                profile_img: faker.image.avatar(),
                job_title: faker.helpers.arrayElement(jobs),
                salary: Math.floor(Math.random() * (7000 - 3000) + 3000),
                phone: faker.phone.number(),
            },
            select: {
                id: true,
            }
        })
        usersInserted.push(user);
    }

    console.log(usersInserted);

    const requestsInsesrted= [] 
    for (let i = 0; i < 10; i++) {
        const request = await prisma.Requests.create({
            data: {
                title: "text",
                text: "I need a few days off.",
                duration_requested: Math.floor(Math.random() * (5 - 3 ) + 3),
                employees_Id: usersInserted[i].id,
                managers_Id: 1,
            },
        })
        requestsInsesrted.push(request);
    }

    console.log(requestsInsesrted);

} catch (err) {
    console.error(err);
}

