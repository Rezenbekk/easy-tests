layout 'layout/main.tpl', title:  'View subject',
content: contents {
  h4 ('View subject')
  form (class:'col s12', method:'post') {

    input (type:'hidden', name:_csrf.parameterName, value:_csrf.token)
    div (class:'row') {
      div (class:'input-field col s12') {
        input (name:'name', id:'field_name', type:'text', class:'validate', readonly:'true') {yield subject.name}
        label (for:'field_name', 'Subject name')
      }
    }
    div (class:'row') {
      div (class:'input-field col s12') {
        textarea (name:'description', id:'textarea_description', class:'materialize-textarea', readonly:'true') {yield subject.description}
        label (for:'textarea_description', 'Subject description')
      }
    }
  }

  div (class:'row') {
    div (class:'col s12') {
      a (class:'waves-effect waves-light btn-large red', onclick: 'document.location.href="/personal/subjects/list"') {
        i (class:'material-icons left', 'close')
        yield 'Close'
      }
    }
  }
}