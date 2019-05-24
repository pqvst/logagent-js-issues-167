
setInterval(() => {
  console.log(new Date);
}, 5000);

setInterval(() => {
  console.log('crashing');
  process.exit(1);
}, 5*60*1000);
