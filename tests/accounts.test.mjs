import {test} from 'node:test';
import assert from 'node:assert/strict';
import {makeApp,post,register} from './helpers.mjs';

test('register from the app (no Origin) returns a token', async()=>{
 const {app}=makeApp();const r=await post(app,'/api/account',{action:'register',email:'amy@example.com',password:'eightchars'});
 assert.equal(r.status,201);assert.match((await r.json()).token,/^[A-Za-z0-9_-]{40,}$/);
});
test('health', async()=>{assert.deepEqual(await (await makeApp().app.handle(new Request('http://x/health'),'1.1.1.1')).json(),{ok:true});});
test('register helper returns a token; unknown path is 404', async()=>{
 const {app}=makeApp();assert.ok((await register(app)).length>=40);
 assert.equal((await app.handle(new Request('http://x/nope'),'1.1.1.1')).status,404);
});
