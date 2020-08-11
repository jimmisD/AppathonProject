import React, { useMemo, useState, useEffect } from "react";
import axios from "axios";

import Table from "./Table";
import "./Data.css";



function Data() {
  const columns = useMemo(
    () => [
      {
        Header: " ",
        columns: [
          {
            Header: "Id",
            accessor: "show.id"
          },
          {
            Header: "First Name",
            accessor: "show.first_name"
          }
        ]
      },
      {
        Header: " ",
        columns: [
          {
            Header: "Last Name",
            accessor: "show.last_name"
          },
          {
            Header: "Job",
            accessor: "show.job",
          },
          {
            Header: "Email",
            accessor: "show.email",
          },
          {
            Header: "Phone Number",
            accessor: "show.phone_number"
          }
        ]
      }
    ],
    []
  );

  const [data, setData] = useState([]);

  useEffect(() => {
    (async () => {
      const result = await axios.get("localhost:8080/demo/all")
      setData(result.data);
    })();
  }, []);

  return (
    <div className="Data">
      <Table columns={columns} data={data} />
    </div>
  );
}

export default Data;