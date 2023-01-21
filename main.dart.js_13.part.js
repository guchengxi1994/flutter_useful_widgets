self.$__dart_deferred_initializers__=self.$__dart_deferred_initializers__||Object.create(null)
$__dart_deferred_initializers__.current=function(a,b,c,$){var A={
aaJ(d,e,f,g){return new A.Fn(g,f,e,d,null)},
Fn:function Fn(d,e,f,g,h){var _=this
_.c=d
_.e=e
_.f=f
_.x=g
_.a=h},
Zt:function Zt(d,e,f){this.a=d
this.b=e
this.c=f},
qq:function qq(d,e,f,g,h){var _=this
_.e=d
_.f=e
_.r=f
_.c=g
_.a=h},
L6:function L6(d,e){var _=this
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
yd:function yd(d,e,f,g,h,i){var _=this
_.B=d
_.V=e
_.ae=f
_.au=g
_.t$=h
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
a6j:function a6j(d,e){this.a=d
this.b=e},
a6i:function a6i(d,e){this.a=d
this.b=e},
zj:function zj(){},
MT:function MT(){},
MU:function MU(){},
aeX(d,e,f){return new A.pF(e,d,null,f.i("pF<0>"))},
pF:function pF(d,e,f,g){var _=this
_.c=d
_.d=e
_.a=f
_.$ti=g},
qx:function qx(d,e){var _=this
_.d=$
_.a=null
_.b=d
_.c=null
_.$ti=e},
a7F:function a7F(d){this.a=d}},B,C
A=a.updateHolder(c[10],A)
B=c[0]
C=c[2]
A.Fn.prototype={
D(d){var x,w,v,u,t=this,s=null,r={},q=t.c,p=B.agy(d,q,!1),o=t.x
r.a=o
x=t.e
if(x!=null)r.a=new B.ds(x,o,s)
w=t.f==null&&B.ae1(d,q)
v=w?B.E3(d):t.f
u=B.aaH(p,C.aa,v,C.I,s,s,s,s,new A.Zt(r,t,p))
return w&&v!=null?B.ae0(u):u}}
A.qq.prototype={
al(d){var x=new A.yd(this.e,this.f,this.r,B.aj(),null,B.aj())
x.aq()
x.saL(null)
return x},
ao(d,e){var x
e.sh_(this.e)
e.sfd(0,this.f)
x=this.r
if(x!==e.ae){e.ae=x
e.an()
e.aU()}},
bg(d){return new A.L6(this,C.D)}}
A.L6.prototype={}
A.yd.prototype={
sh_(d){if(d===this.B)return
this.B=d
this.I()},
sfd(d,e){var x=this,w=x.V
if(e===w)return
if(x.b!=null)w.H(0,x.goN())
x.V=e
if(x.b!=null)e.a0(0,x.goN())
x.I()},
T3(){this.an()
this.aU()},
d5(d){if(!(d.e instanceof B.bM))d.e=new B.bM()},
ac(d){this.NG(d)
this.V.a0(0,this.goN())},
a7(d){this.V.H(0,this.goN())
this.NH(0)},
gdD(){return!0},
gWw(){switch(B.b4(this.B).a){case 0:return this.k3.a
case 1:return this.k3.b}},
gTF(){var x=this,w=x.t$
if(w==null)return 0
switch(B.b4(x.B).a){case 0:return Math.max(0,w.k3.a-x.k3.a)
case 1:return Math.max(0,w.k3.b-x.k3.b)}},
BW(d){switch(B.b4(this.B).a){case 0:return new B.al(0,1/0,d.c,d.d)
case 1:return new B.al(d.a,d.b,0,1/0)}},
aB(d){var x=this.t$
if(x!=null)return x.af(C.X,d,x.gb6())
return 0},
aE(d){var x=this.t$
if(x!=null)return x.af(C.M,d,x.gaY())
return 0},
az(d){var x=this.t$
if(x!=null)return x.af(C.ae,d,x.gbf())
return 0},
aD(d){var x=this.t$
if(x!=null)return x.af(C.af,d,x.gbe())
return 0},
bU(d){var x=this.t$
if(x==null)return new B.L(B.I(0,d.a,d.b),B.I(0,d.c,d.d))
return d.ar(x.dY(this.BW(d)))},
bn(){var x=this,w=y.a.a(B.v.prototype.gN.call(x)),v=x.t$
if(v==null)x.k3=new B.L(B.I(0,w.a,w.b),B.I(0,w.c,w.d))
else{v.c9(x.BW(w),!0)
v=x.t$.k3
v.toString
x.k3=w.ar(v)}x.V.mq(x.gWw())
x.V.mo(0,x.gTF())},
mc(d){var x=this
switch(x.B.a){case 0:return new B.k(0,d-x.t$.k3.b+x.k3.b)
case 2:return new B.k(0,-d)
case 3:return new B.k(d-x.t$.k3.a+x.k3.a,0)
case 1:return new B.k(-d,0)}},
DV(d){var x,w,v,u,t
switch(this.ae.a){case 0:return!1
case 1:case 2:case 3:x=d.a
if(!(x<0)){w=d.b
if(!(w<0)){v=this.t$.k3
u=v.a
t=this.k3
x=x+u>t.a||w+v.b>t.b}else x=!0}else x=!0
return x}},
ag(d,e){var x,w,v,u,t=this
if(t.t$!=null){x=t.V.as
x.toString
x=t.mc(x)
w=new A.a6j(t,x)
v=t.au
if(t.DV(x)){x=t.cx
x===$&&B.b()
u=t.k3
v.saJ(0,d.jY(x,e,new B.x(0,0,0+u.a,0+u.b),w,t.ae,v.a))}else{v.saJ(0,null)
w.$2(d,e)}}},
m(){this.au.saJ(0,null)
this.j6()},
cJ(d,e){var x=this.V.as
x.toString
x=this.mc(x)
e.aw(0,x.a,x.b)},
it(d){var x=this,w=x.V.as
w.toString
w=x.mc(w)
if(x.DV(w)){w=x.k3
return new B.x(0,0,0+w.a,0+w.b)}return null},
cn(d,e){var x,w=this
if(w.t$!=null){x=w.V.as
x.toString
return d.jl(new A.a6i(w,e),w.mc(x),e)}return!1},
k9(d,e,f){var x,w,v,u,t,s,r,q=this
if(f==null)f=d.ghf()
if(!(d instanceof B.w)){x=q.V.as
x.toString
return new B.oZ(x,f)}w=B.fS(d.bE(0,q.t$),f)
x=q.t$.k3
x.toString
switch(q.B.a){case 0:v=q.k3.b
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
return new B.oZ(r,w.cG(q.mc(r)))},
eq(d,e,f,g){var x=this
if(!x.V.f.gkR())return x.oh(d,e,f,g)
x.oh(d,null,f,B.aeh(d,e,f,x.V,g,x))},
lI(){return this.eq(C.ab,null,C.o,null)},
kn(d,e){return this.eq(C.ab,d,C.o,e)},
wA(d){var x
switch(B.b4(this.B).a){case 1:x=this.k3
return new B.x(0,-250,0+x.a,0+x.b+250)
case 0:x=this.k3
return new B.x(-250,0,0+x.a+250,0+x.b)}},
$iEk:1}
A.zj.prototype={
ac(d){var x
this.dI(d)
x=this.t$
if(x!=null)x.ac(d)},
a7(d){var x
this.d6(0)
x=this.t$
if(x!=null)x.a7(0)}}
A.MT.prototype={}
A.MU.prototype={}
A.pF.prototype={
aa(){return new A.qx(C.j,this.$ti.i("qx<1>"))}}
A.qx.prototype={
av(){var x,w=this
w.aM()
x=w.a.c
w.d=x.a
x.a0(0,w.gvK())},
aP(d){var x,w,v=this
v.bk(d)
x=d.c
if(x!==v.a.c){w=v.gvK()
x.H(0,w)
x=v.a.c
v.d=x.a
x.a0(0,w)}},
m(){this.a.c.H(0,this.gvK())
this.aF()},
Wv(){this.ab(new A.a7F(this))},
D(d){var x,w=this.a
w.toString
x=this.d
x===$&&B.b()
return w.d.$3(d,x,null)}}
var z=a.updateTypes(["E(E)","~()","qq(Q,ex)","~({curve:ed,descendant:v?,duration:aJ,rect:x?})"])
A.Zt.prototype={
$2(d,e){return new A.qq(this.c,e,C.aa,this.a.a,null)},
$S:z+2}
A.a6j.prototype={
$2(d,e){var x=this.a.t$
x.toString
d.dR(x,e.W(0,this.b))},
$S:18}
A.a6i.prototype={
$2(d,e){return this.a.t$.bz(d,e)},
$S:11}
A.a7F.prototype={
$0(){var x=this.a
x.d=x.a.c.a},
$S:0};(function aliases(){var x=A.zj.prototype
x.NG=x.ac
x.NH=x.a7})();(function installTearOffs(){var x=a._instance_0u,w=a._instance_1u,v=a.installInstanceTearOff
var u
x(u=A.yd.prototype,"goN","T3",1)
w(u,"gb6","aB",0)
w(u,"gaY","aE",0)
w(u,"gbf","az",0)
w(u,"gbe","aD",0)
v(u,"glH",0,0,null,["$4$curve$descendant$duration$rect","$0","$2$descendant$rect"],["eq","lI","kn"],3,0,0)
x(A.qx.prototype,"gvK","Wv",1)})();(function inheritance(){var x=a.mixinHard,w=a.mixin,v=a.inherit,u=a.inheritMany
v(A.Fn,B.ac)
u(B.hl,[A.Zt,A.a6j,A.a6i])
v(A.qq,B.aK)
v(A.MT,B.pe)
v(A.MU,A.MT)
v(A.L6,A.MU)
v(A.zj,B.w)
v(A.yd,A.zj)
v(A.pF,B.X)
v(A.qx,B.Y)
v(A.a7F,B.fD)
x(A.zj,B.aw)
w(A.MT,B.uj)
w(A.MU,B.Gs)})()
B.jm(b.typeUniverse,JSON.parse('{"qq":{"aK":[],"ak":[],"h":[]},"Fn":{"ac":[],"h":[]},"L6":{"b1":[],"a5":[],"Q":[]},"yd":{"w":[],"aw":["w"],"Ek":[],"v":[],"F":[],"a7":[]},"pF":{"X":[],"h":[]},"qx":{"Y":["pF<1>"]}}'))
var y={a:B.Z("al")}}
$__dart_deferred_initializers__["e/XbMzEGG2iI2CHeNUwiDXNcZNk="] = $__dart_deferred_initializers__.current
