import fs from 'node:fs';
import path from 'node:path';
import { PNG } from 'pngjs';
import { Scaler } from '@kayahr/xbrz';
const jobs=JSON.parse(fs.readFileSync(process.argv[2],'utf8'));
for(const job of jobs){
 const input=PNG.sync.read(fs.readFileSync(job.input));
 const factor=job.scale ?? 2;
 const scaler=new Scaler(input.width,input.height,factor);
 const output=new PNG({width:input.width*factor,height:input.height*factor});
 output.data=Buffer.from(scaler.scale(new Uint8ClampedArray(input.data)));
 fs.mkdirSync(path.dirname(job.output),{recursive:true});
 fs.writeFileSync(job.output,PNG.sync.write(output));
 process.stdout.write(path.basename(job.input)+' xBRZ done\n');
}
