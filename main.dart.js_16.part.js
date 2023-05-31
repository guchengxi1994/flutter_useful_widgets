self.$__dart_deferred_initializers__=self.$__dart_deferred_initializers__||Object.create(null)
$__dart_deferred_initializers__.current=function(a,b,c,$){var A={
afD(d,e,f,g){return new A.Ht(g,f,e,d,null)},
Ht:function Ht(d,e,f,g,h){var _=this
_.c=d
_.e=e
_.f=f
_.x=g
_.a=h},
a24:function a24(d,e,f){this.a=d
this.b=e
this.c=f},
t2:function t2(d,e,f,g,h){var _=this
_.e=d
_.f=e
_.r=f
_.c=g
_.a=h},
NI:function NI(d,e){var _=this
_.ch=_.p3=null
_.CW=!1
_.d=_.c=_.b=_.a=_.cx=null
_.e=$
_.f=d
_.r=null
_.w=e
_.z=_.y=null
_.Q=!1
_.as=!0
_.ay=_.ax=_.at=!1},
A8:function A8(d,e,f,g,h,i){var _=this
_.t=d
_.P=e
_.ac=f
_.ar=g
_.u$=h
_.k1=_.id=null
_.k2=!1
_.k4=_.k3=null
_.ok=0
_.d=!1
_.f=_.e=null
_.w=_.r=!1
_.x=null
_.y=!1
_.z=!0
_.Q=null
_.as=!1
_.at=null
_.ax=!1
_.ay=$
_.ch=i
_.CW=!1
_.cx=$
_.cy=!0
_.db=!1
_.dx=null
_.dy=!0
_.fr=null
_.a=0
_.c=_.b=null},
aap:function aap(d,e){this.a=d
this.b=e},
aao:function aao(d,e){this.a=d
this.b=e},
Bu:function Bu(){},
PE:function PE(){},
PF:function PF(){},
ak3(d,e,f){return new A.ra(e,d,null,f.j("ra<0>"))},
ra:function ra(d,e,f,g){var _=this
_.c=d
_.d=e
_.a=f
_.$ti=g},
t9:function t9(d,e){var _=this
_.d=$
_.a=null
_.b=d
_.c=null
_.$ti=e},
aci:function aci(d){this.a=d}},B,C
A=a.updateHolder(c[13],A)
B=c[0]
C=c[2]
A.Ht.prototype={
F(d){var x,w,v,u,t=this,s=null,r={},q=t.c,p=B.alI(d,q,!1),o=t.x
r.a=o
x=t.e
if(x!=null)r.a=new B.d9(x,o,s)
w=t.f==null&&B.aj0(d,q)
v=w?B.G9(d):t.f
u=B.a1i(p,C.af,v,C.I,!1,s,s,s,s,new A.a24(r,t,p))
return w&&v!=null?B.aj_(u):u}}
A.t2.prototype={
aw(d){var x=new A.A8(this.e,this.f,this.r,B.ae(),null,B.ae())
x.av()
x.sb_(null)
return x},
az(d,e){var x
e.shS(this.e)
e.seX(0,this.f)
x=this.r
if(x!==e.ac){e.ac=x
e.an()
e.aT()}},
bw(d){return new A.NI(this,C.O)}}
A.NI.prototype={}
A.A8.prototype={
shS(d){if(d===this.t)return
this.t=d
this.L()},
seX(d,e){var x=this,w=x.P
if(e===w)return
if(x.b!=null)w.G(0,x.gqF())
x.P=e
if(x.b!=null)e.X(0,x.gqF())
x.L()},
Yv(){this.an()
this.aT()},
dn(d){if(!(d.e instanceof B.bY))d.e=new B.bY()},
af(d){this.RK(d)
this.P.X(0,this.gqF())},
a8(d){this.P.G(0,this.gqF())
this.RL(0)},
gdV(){return!0},
ga20(){switch(B.bc(this.t).a){case 0:return this.k3.a
case 1:return this.k3.b}},
gZf(){var x=this,w=x.u$
if(w==null)return 0
switch(B.bc(x.t).a){case 0:return Math.max(0,w.k3.a-x.k3.a)
case 1:return Math.max(0,w.k3.b-x.k3.b)}},
EY(d){switch(B.bc(this.t).a){case 0:return new B.an(0,1/0,d.c,d.d)
case 1:return new B.an(d.a,d.b,0,1/0)}},
aO(d){var x=this.u$
if(x!=null)return x.a2(C.D,d,x.gaL())
return 0},
aS(d){var x=this.u$
if(x!=null)return x.a2(C.M,d,x.gaV())
return 0},
aI(d){var x=this.u$
if(x!=null)return x.a2(C.W,d,x.gb5())
return 0},
aR(d){var x=this.u$
if(x!=null)return x.a2(C.az,d,x.gbo())
return 0},
bW(d){var x=this.u$
if(x==null)return new B.L(B.H(0,d.a,d.b),B.H(0,d.c,d.d))
return d.aG(x.en(this.EY(d)))},
bt(){var x=this,w=y.a.a(B.v.prototype.gR.call(x)),v=x.u$
if(v==null)x.k3=new B.L(B.H(0,w.a,w.b),B.H(0,w.c,w.d))
else{v.c_(x.EY(w),!0)
v=x.u$.k3
v.toString
x.k3=w.aG(v)}x.P.m2(x.ga20())
x.P.m_(0,x.gZf())},
nL(d){var x=this
switch(x.t.a){case 0:return new B.j(0,d-x.u$.k3.b+x.k3.b)
case 2:return new B.j(0,-d)
case 3:return new B.j(d-x.u$.k3.a+x.k3.a,0)
case 1:return new B.j(-d,0)}},
Hf(d){var x,w,v,u,t
switch(this.ac.a){case 0:return!1
case 1:case 2:case 3:x=d.a
if(!(x<0)){w=d.b
if(!(w<0)){v=this.u$.k3
u=v.a
t=this.k3
x=x+u>t.a||w+v.b>t.b}else x=!0}else x=!0
return x}},
aj(d,e){var x,w,v,u,t=this
if(t.u$!=null){x=t.P.as
x.toString
x=t.nL(x)
w=new A.aap(t,x)
v=t.ar
if(t.Hf(x)){x=t.cx
x===$&&B.b()
u=t.k3
v.saH(0,d.jR(x,e,new B.u(0,0,0+u.a,0+u.b),w,t.ac,v.a))}else{v.saH(0,null)
w.$2(d,e)}}},
m(){this.ar.saH(0,null)
this.j8()},
cR(d,e){var x=this.P.as
x.toString
x=this.nL(x)
e.aE(0,x.a,x.b)},
iI(d){var x=this,w=x.P.as
w.toString
w=x.nL(w)
if(x.Hf(w)){w=x.k3
return new B.u(0,0,0+w.a,0+w.b)}return null},
cs(d,e){var x,w=this
if(w.u$!=null){x=w.P.as
x.toString
return d.jp(new A.aao(w,e),w.nL(x),e)}return!1},
lf(d,e,f){var x,w,v,u,t,s,r,q=this
if(f==null)f=d.gib()
if(!(d instanceof B.x)){x=q.P.as
x.toString
return new B.lA(x,f)}w=B.fO(d.bF(0,q.u$),f)
x=q.u$.k3
x.toString
switch(q.t.a){case 0:v=q.k3.b
u=w.d
t=x.b-u
s=u-w.b
break
case 1:v=q.k3.a
t=w.a
s=w.c-t
break
case 2:v=q.k3.b
t=w.b
s=w.d-t
break
case 3:v=q.k3.a
u=w.c
t=x.a-u
s=u-w.a
break
default:t=null
s=null
v=null}r=t-(v-s)*e
return new B.lA(r,w.bV(q.nL(r)))},
de(d,e,f,g){var x=this
if(!x.P.f.gkr())return x.q5(d,e,f,g)
x.q5(d,null,f,B.ajh(d,e,f,x.P,g,x))},
n7(){return this.de(C.ag,null,C.q,null)},
kb(d){return this.de(C.ag,null,C.q,d)},
ls(d,e,f){return this.de(d,null,e,f)},
kc(d,e){return this.de(C.ag,d,C.q,e)},
zc(d){var x
switch(B.bc(this.t).a){case 1:x=this.k3
return new B.u(0,-250,0+x.a,0+x.b+250)
case 0:x=this.k3
return new B.u(-250,0,0+x.a+250,0+x.b)}},
$iGn:1}
A.Bu.prototype={
af(d){var x
this.dq(d)
x=this.u$
if(x!=null)x.af(d)},
a8(d){var x
this.d3(0)
x=this.u$
if(x!=null)x.a8(0)}}
A.PE.prototype={}
A.PF.prototype={}
A.ra.prototype={
ab(){return new A.t9(C.k,this.$ti.j("t9<1>"))}}
A.t9.prototype={
ap(){var x,w=this
w.aN()
x=w.a.c
w.d=x.a
x.X(0,w.gyi())},
aJ(d){var x,w,v=this
v.bd(d)
x=d.c
if(x!==v.a.c){w=v.gyi()
x.G(0,w)
x=v.a.c
v.d=x.a
x.X(0,w)}},
m(){this.a.c.G(0,this.gyi())
this.aF()},
a1Z(){this.aa(new A.aci(this))},
F(d){var x,w=this.a
w.toString
x=this.d
x===$&&B.b()
return w.d.$3(d,x,null)}}
var z=a.updateTypes(["E(E)","~()","t2(O,em)","~({curve:eQ,descendant:v?,duration:aR,rect:u?})"])
A.a24.prototype={
$2(d,e){return new A.t2(this.c,e,C.af,this.a.a,null)},
$S:z+2}
A.aap.prototype={
$2(d,e){var x=this.a.u$
x.toString
d.d_(x,e.S(0,this.b))},
$S:13}
A.aao.prototype={
$2(d,e){return this.a.u$.bz(d,e)},
$S:9}
A.aci.prototype={
$0(){var x=this.a
x.d=x.a.c.a},
$S:0};(function aliases(){var x=A.Bu.prototype
x.RK=x.af
x.RL=x.a8})();(function installTearOffs(){var x=a._instance_0u,w=a._instance_1u,v=a.installInstanceTearOff
var u
x(u=A.A8.prototype,"gqF","Yv",1)
w(u,"gaL","aO",0)
w(u,"gaV","aS",0)
w(u,"gb5","aI",0)
w(u,"gbo","aR",0)
v(u,"gn6",0,0,null,["$4$curve$descendant$duration$rect","$0","$1$rect","$3$curve$duration$rect","$2$descendant$rect"],["de","n7","kb","ls","kc"],3,0,0)
x(A.t9.prototype,"gyi","a1Z",1)})();(function inheritance(){var x=a.mixinHard,w=a.mixin,v=a.inherit,u=a.inheritMany
v(A.Ht,B.a8)
u(B.fj,[A.a24,A.aap,A.aao])
v(A.t2,B.aO)
v(A.PE,B.qJ)
v(A.PF,A.PE)
v(A.NI,A.PF)
v(A.Bu,B.x)
v(A.A8,A.Bu)
v(A.ra,B.U)
v(A.t9,B.a_)
v(A.aci,B.eN)
x(A.Bu,B.aD)
w(A.PE,B.w5)
w(A.PF,B.IL)})()
B.hc(b.typeUniverse,JSON.parse('{"t2":{"aO":[],"ai":[],"h":[]},"Ht":{"a8":[],"h":[]},"NI":{"br":[],"ab":[],"O":[]},"A8":{"x":[],"aD":["x"],"Gn":[],"v":[],"G":[],"a7":[]},"ra":{"U":[],"h":[]},"t9":{"a_":["ra<1>"]}}'))
var y={a:B.Z("an")}}
$__dart_deferred_initializers__["TCfSvsOoYbHL14qfKO1Chnd6Lew="] = $__dart_deferred_initializers__.current
