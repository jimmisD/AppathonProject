class User extends React.Component { (1)

	constructor(props) {
		super(props);
		this.state = {user: []};
	}

	componentDidMount() { (2)
		client({method: 'GET', path: 'localhost:8080/demo/all'}).done(response => {
			this.setState({user: response.entity._embedded.user});
		});
	}

	render() { (3)
		return (
			<UserList user={this.state.user}/>
		)
	}
}