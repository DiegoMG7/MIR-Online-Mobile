import PropTypes from 'prop-types';

export const MirApp = ({title, subTitle}) => {

  return (
    <>
    <h1>{title}</h1>
    {/* <code>{JSON.stringify(newMessage)}</code> esta sentencia es para poder imprimir objetos*/}
    </>
    
  );
}

MirApp.propTypes = {
  title: PropTypes.string.isRequired //aqui se define el tipado que queremos y si es obligatorio
}

MirApp.defaultProps = {
  title: 'No hay titulo'
}