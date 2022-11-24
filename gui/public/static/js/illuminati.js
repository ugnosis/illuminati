import axios from 'https://cdn.skypack.dev/axios';

async function renderPersonFirstName() {
    const respose = await axios.get('/illuminati/person-first-name')
    const data = respose.data
    const div = document.getElementById("data-table-person")
    div.appendChild(renderDataTable(data))
}
// renderPersonFirstName()

async function renderPerson() {
    const respose = await axios.get('/illuminati/person')
    const data = respose.data
    console.log(data)
    const div = document.getElementById("data-table-person")
    div.appendChild(renderDataTable(data))
}
renderPerson()

function renderDataTable(data) {
    const key_to_string = (key) => key.replace("_", " ")

    // table
    const table = document.createElement("data-table")
    {
        // thead
        const thead = document.createElement("thead")
        {
            // rows
            const tr = document.createElement("tr")
            {
                for (const key of Object.keys(data[0])) {
                    const th = document.createElement("th")
                    th.innerText = key_to_string(key)
                    tr.appendChild(th)
                }
            }
            thead.appendChild(tr)
        }
        table.appendChild(thead)

        // tbody
        const tbody = document.createElement("tbody")
        {
            // rows
            data.forEach(item => {
                const tr = document.createElement("tr")
                {
                    for (const key of Object.keys(data[0])) {
                        const td = document.createElement("td")
                        td.innerText = item[key]
                        tr.appendChild(td)
                    }
                }
                tbody.appendChild(tr)
            });
        }
        table.appendChild(tbody)
    }
    return table
}
