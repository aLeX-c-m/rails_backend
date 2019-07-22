import React from 'react';
import ReactDOM from 'react-dom';
//import axios from 'axios'

class App extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            signedIn: false,
            messages: ['hey']
        }
        this.handleClick = this.handleClick.bind(this)
    }

    componentDidMount(){
        //axios.get('/messages)
    }

    handleClick(text){
        if(this.state.signedIn){
            /*axios.post('/messages')
            .then(()=>{
                messages.unshift(text)
            })
            */
        } else {
            //axios.post('/users')
            //.then((err)=>{ if(err) window.alert('please reenter with correct capitalization')})
            this.setState({
                signedIn: true
            })
        }
    }
   


    render(){
        return (
           <React.Fragment>
          
                <div id='box'>
                    <h1 id='logo'>RUBY CHAT</h1>
                    <form>
                        <input type="text"/>
                    </form>
                    {this.state.signedIn ? <div><button onClick={this.handleClick} >SUBMIT</button></div> : <div><button onClick={this.handleClick} >SIGN IN</button></div>}
                </div>
                <div id= 'chatbox'>
                    {this.state.messages.map((msg)=>{
                        return <h1>{msg}</h1>
                    })}
                </div>
            </React.Fragment>);
    }
}



ReactDOM.render(<App/>, document.getElementById('app'))



