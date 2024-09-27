((a,b,c)=>{a[b]=a[b]||{}
a[b][c]=a[b][c]||[]
a[b][c].push({p:"main.dart.js_18",e:"beginPart"})})(self,"$__dart_deferred_initializers__","eventLog")
$__dart_deferred_initializers__.current=function(a,b,c,$){var A,C,B={
apD(d,e,f,g){return new B.Lp(g,f,e,d,null)},
Lp:function Lp(d,e,f,g,h){var _=this
_.c=d
_.e=e
_.f=f
_.x=g
_.a=h},
aas:function aas(d,e,f){this.a=d
this.b=e
this.c=f},
uJ:function uJ(d,e,f,g,h){var _=this
_.e=d
_.f=e
_.r=f
_.c=g
_.a=h},
SL:function SL(d,e){var _=this
_.c=_.b=_.a=_.CW=_.ay=_.p1=null
_.d=$
_.e=d
_.r=_.f=null
_.w=e
_.z=_.y=null
_.Q=!1
_.as=!0
_.at=!1},
D5:function D5(d,e,f,g,h,i,j){var _=this
_.u=d
_.K=e
_.a0=f
_.ah=g
_.q$=h
_.fx=i
_.b=_.id=null
_.c=0
_.y=_.d=null
_.z=!0
_.Q=null
_.as=!1
_.at=null
_.ay=$
_.ch=j
_.CW=!1
_.cx=$
_.cy=!0
_.db=!1
_.dx=null
_.dy=!0
_.fr=null},
aji:function aji(d,e){this.a=d
this.b=e},
ajh:function ajh(d){this.a=d},
EP:function EP(){},
UR:function UR(){},
US:function US(){}}
A=c[0]
C=c[2]
B=a.updateHolder(c[13],B)
B.Lp.prototype={
F(d){var x,w,v,u,t=this,s=null,r={},q=t.c,p=A.axT(d,q,!1),o=t.x
r.a=o
x=t.e
if(x!=null)r.a=new A.cd(x,o,s)
w=t.f==null&&A.auj(d,q)
v=w?A.K2(d):t.f
u=A.a9w(p,C.Z,v,C.J,!1,C.aa,s,s,s,s,s,new B.aas(r,t,p))
return w&&v!=null?A.aui(u):u}}
B.uJ.prototype={
aC(d){var x=new B.D5(this.e,this.f,this.r,A.aa(),null,new A.az(),A.aa())
x.aB()
x.saP(null)
return x},
aG(d,e){var x
e.shH(this.e)
e.shm(this.f)
x=this.r
if(x!==e.a0){e.a0=x
e.av()
e.b4()}},
ba(){return new B.SL(this,C.V)}}
B.SL.prototype={}
B.D5.prototype={
shH(d){if(d===this.u)return
this.u=d
this.N()},
shm(d){var x=this,w=x.K
if(d===w)return
if(x.y!=null)w.D(x.gvV())
x.K=d
if(x.y!=null)d.S(x.gvV())
x.N()},
a8E(){this.av()
this.b4()},
ec(d){if(!(d.b instanceof A.c0))d.b=new A.c0()},
ad(d){this.a0z(d)
this.K.S(this.gvV())},
a5(){this.K.D(this.gvV())
this.a0A()},
gez(){return!0},
gad0(){switch(A.aW(this.u).a){case 0:var x=this.gt().a
break
case 1:x=this.gt().b
break
default:x=null}return x},
gw5(){var x=this,w=x.q$
if(w==null)return 0
switch(A.aW(x.u).a){case 0:w=w.gt().a-x.gt().a
break
case 1:w=w.gt().b-x.gt().b
break
default:w=null}return Math.max(0,A.hS(w))},
Me(d){var x
switch(A.aW(this.u).a){case 0:x=new A.a1(0,1/0,d.c,d.d)
break
case 1:x=new A.a1(d.a,d.b,0,1/0)
break
default:x=null}return x},
b7(d){var x=this.q$
x=x==null?null:x.a7(C.ap,d,x.gbw())
return x==null?0:x},
b2(d){var x=this.q$
x=x==null?null:x.a7(C.ac,d,x.gbl())
return x==null?0:x},
b6(d){var x=this.q$
x=x==null?null:x.a7(C.aq,d,x.gbv())
return x==null?0:x},
b1(d){var x=this.q$
x=x==null?null:x.a7(C.aR,d,x.gbC())
return x==null?0:x},
co(d){var x=this.q$
if(x==null)return new A.E(A.B(0,d.a,d.b),A.B(0,d.c,d.d))
return d.aM(x.a7(C.G,this.Me(d),x.gbX()))},
bn(){var x,w,v=this,u=y.a.a(A.r.prototype.gP.call(v)),t=v.q$
if(t==null)v.id=new A.E(A.B(0,u.a,u.b),A.B(0,u.c,u.d))
else{t.bO(v.Me(u),!0)
v.id=u.aM(v.q$.gt())}t=v.K.at
if(t!=null)if(t>v.gw5()){t=v.K
x=v.gw5()
w=v.K.at
w.toString
t.F5(x-w)}else{t=v.K
x=t.at
x.toString
if(x<0)t.F5(0-x)}v.K.oU(v.gad0())
v.K.oR(0,v.gw5())},
r2(d){var x,w=this
switch(w.u.a){case 0:x=new A.f(0,d-w.q$.gt().b+w.gt().b)
break
case 3:x=new A.f(d-w.q$.gt().a+w.gt().a,0)
break
case 1:x=new A.f(-d,0)
break
case 2:x=new A.f(0,-d)
break
default:x=null}return x},
Pp(d){var x,w,v=this
switch(v.a0.a){case 0:return!1
case 1:case 2:case 3:x=d.a
if(!(x<0)){w=d.b
x=w<0||x+v.q$.gt().a>v.gt().a||w+v.q$.gt().b>v.gt().b}else x=!0
return x}},
am(d,e){var x,w,v,u,t,s=this
if(s.q$!=null){x=s.K.at
x.toString
w=s.r2(x)
x=new B.aji(s,w)
v=s.ah
if(s.Pp(w)){u=s.cx
u===$&&A.a()
t=s.gt()
v.sao(d.l0(u,e,new A.q(0,0,0+t.a,0+t.b),x,s.a0,v.a))}else{v.sao(null)
x.$2(d,e)}}},
l(){this.ah.sao(null)
this.fl()},
cA(d,e){var x,w=this.K.at
w.toString
x=this.r2(w)
e.aK(x.a,x.b)},
lN(d){var x=this,w=x.K.at
w.toString
w=x.Pp(x.r2(w))
if(w){w=x.gt()
return new A.q(0,0,0+w.a,0+w.b)}return null},
ce(d,e){var x,w=this
if(w.q$!=null){x=w.K.at
x.toString
return d.ii(new B.ajh(w),w.r2(x),e)}return!1},
nN(d,e,f,g){var x,w,v,u,t,s,r,q,p,o,n=this,m=null
A.aW(n.u)
if(g==null)g=d.gk7()
if(!(d instanceof A.o)){x=n.K.at
x.toString
return new A.mf(x,g)}w=A.dk(d.aN(n.q$),g)
v=n.q$.gt()
switch(n.u.a){case 0:x=w.d
x=new A.hb(n.gt().b,v.b-x,x-w.b)
break
case 3:x=w.c
x=new A.hb(n.gt().a,v.a-x,x-w.a)
break
case 1:x=w.a
x=new A.hb(n.gt().a,x,w.c-x)
break
case 2:x=w.b
x=new A.hb(n.gt().b,x,w.d-x)
break
default:x=m}u=x.a
t=m
s=m
r=x.b
q=x.c
s=q
t=r
p=u
o=t-(p-s)*e
return new A.mf(o,w.cl(n.r2(o)))},
A1(d,e,f){return this.nN(d,e,null,f)},
er(d,e,f,g){var x=this
if(!x.K.r.gmQ())return x.vd(d,e,f,g)
x.vd(d,null,f,A.auH(d,e,f,x.K,g,x))},
qe(){return this.er(C.az,null,C.t,null)},
mr(d){return this.er(C.az,null,C.t,d)},
o2(d,e,f){return this.er(d,null,e,f)},
ms(d,e){return this.er(C.az,d,C.t,e)},
Fh(d){var x,w,v=this,u=v.gw5(),t=v.K.at
t.toString
x=u-t
switch(v.u.a){case 0:v.gt()
v.gt()
u=v.gt()
t=v.gt()
w=v.K.at
w.toString
return new A.q(0,0-x,0+u.a,0+t.b+w)
case 1:v.gt()
u=v.K.at
u.toString
v.gt()
return new A.q(0-u,0,0+v.gt().a+x,0+v.gt().b)
case 2:v.gt()
v.gt()
u=v.K.at
u.toString
return new A.q(0,0-u,0+v.gt().a,0+v.gt().b+x)
case 3:v.gt()
v.gt()
u=v.gt()
t=v.K.at
t.toString
return new A.q(0-x,0,0+u.a+t,0+v.gt().b)}},
$iKh:1}
B.EP.prototype={
ad(d){var x
this.dP(d)
x=this.q$
if(x!=null)x.ad(d)},
a5(){this.dQ()
var x=this.q$
if(x!=null)x.a5()}}
B.UR.prototype={}
B.US.prototype={}
var z=a.updateTypes(["D(D)","uJ(H,eC)","~()","~({curve:ea,descendant:r?,duration:aA,rect:q?})"])
B.aas.prototype={
$2(d,e){return new B.uJ(this.c,e,C.Z,this.a.a,null)},
$S:z+1}
B.aji.prototype={
$2(d,e){var x=this.a.q$
x.toString
d.d0(x,e.U(0,this.b))},
$S:14}
B.ajh.prototype={
$2(d,e){return this.a.q$.c2(d,e)},
$S:12};(function aliases(){var x=B.EP.prototype
x.a0z=x.ad
x.a0A=x.a5})();(function installTearOffs(){var x=a._instance_0u,w=a._instance_1u,v=a.installInstanceTearOff
var u
x(u=B.D5.prototype,"gvV","a8E",2)
w(u,"gbw","b7",0)
w(u,"gbl","b2",0)
w(u,"gbv","b6",0)
w(u,"gbC","b1",0)
v(u,"go1",0,0,null,["$4$curve$descendant$duration$rect","$0","$1$rect","$3$curve$duration$rect","$2$descendant$rect"],["er","qe","mr","o2","ms"],3,0,0)})();(function inheritance(){var x=a.mixinHard,w=a.mixin,v=a.inherit,u=a.inheritMany
v(B.Lp,A.Y)
u(A.f2,[B.aas,B.aji,B.ajh])
v(B.uJ,A.aJ)
v(B.UR,A.td)
v(B.US,B.UR)
v(B.SL,B.US)
v(B.EP,A.o)
v(B.D5,B.EP)
x(B.EP,A.ao)
w(B.UR,A.ye)
w(B.US,A.MK)})()
A.eX(b.typeUniverse,JSON.parse('{"uJ":{"aJ":[],"ad":[],"d":[]},"Lp":{"Y":[],"d":[]},"SL":{"av":[],"a8":[],"H":[]},"D5":{"o":[],"ao":["o"],"Kh":[],"r":[],"ab":[]}}'))
var y={a:A.W("a1")}};
((a,b)=>{a[b]=a.current
a.eventLog.push({p:"main.dart.js_18",e:"endPart",h:b})})($__dart_deferred_initializers__,"kOezfEq9RjxSsbCZzcIOT2lA44A=");