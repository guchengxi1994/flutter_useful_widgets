self.$__dart_deferred_initializers__=self.$__dart_deferred_initializers__||Object.create(null)
$__dart_deferred_initializers__.current=function(a,b,c,$){var B={uj:function uj(d,e,f){this.d=d
this.r=e
this.a=f},
ahZ(d){var x,w,v=new A.b5(new Float64Array(16))
v.cU()
for(x=d.length-1;x>0;--x){w=d[x]
if(w!=null)w.m0(d[x-1],v)}return v},
Vn(d,e,f,g){var x,w
if(d==null||e==null)return null
if(d===e)return d
x=d.a
w=e.a
if(x<w){x=y.m
g.push(x.a(A.G.prototype.ga4.call(e,e)))
return B.Vn(d,x.a(A.G.prototype.ga4.call(e,e)),f,g)}else if(x>w){x=y.m
f.push(x.a(A.G.prototype.ga4.call(d,d)))
return B.Vn(x.a(A.G.prototype.ga4.call(d,d)),e,f,g)}x=y.m
f.push(x.a(A.G.prototype.ga4.call(d,d)))
g.push(x.a(A.G.prototype.ga4.call(e,e)))
return B.Vn(x.a(A.G.prototype.ga4.call(d,d)),x.a(A.G.prototype.ga4.call(e,e)),f,g)},
pR:function pR(){var _=this
_.b=_.a=null
_.c=!1
_.d=null},
uQ:function uQ(d,e,f,g,h,i){var _=this
_.p1=d
_.p2=e
_.p3=f
_.p4=g
_.rx=_.RG=_.R8=null
_.ry=!0
_.cx=_.CW=null
_.d=h
_.e=0
_.r=!1
_.w=i
_.x=0
_.y=!0
_.at=_.as=_.Q=_.z=null
_.a=0
_.c=_.b=null},
Gy:function Gy(d,e,f){var _=this
_.q=d
_.M=null
_.u$=e
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
_.ch=f
_.CW=!1
_.cx=$
_.cy=!0
_.db=!1
_.dx=null
_.dy=!0
_.fr=null
_.a=0
_.c=_.b=null},
Gv:function Gv(d,e,f,g,h,i,j){var _=this
_.q=d
_.M=e
_.a5=f
_.aD=g
_.cJ=h
_.u$=i
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
_.ch=j
_.CW=!1
_.cx=$
_.cy=!0
_.db=!1
_.dx=null
_.dy=!0
_.fr=null
_.a=0
_.c=_.b=null},
a_r:function a_r(d){this.a=d},
GK:function GK(){},
ahz(d,e,f,g){return new B.CD(e,!1,f,d,null)},
mx:function mx(d,e,f){this.e=d
this.c=e
this.a=f},
CD:function CD(d,e,f,g,h){var _=this
_.e=d
_.f=e
_.x=f
_.c=g
_.a=h},
xy:function xy(d,e,f,g,h,i){var _=this
_.a=d
_.b=e
_.c=f
_.d=g
_.e=h
_.w=i}},A,C,D
B=a.updateHolder(c[11],B)
A=c[0]
C=c[2]
D=c[21]
B.uj.prototype={
F(d){var x,w,v,u,t=null,s=A.aeR(d),r=s.b
if(r==null)r=16
x=this.d
w=x==null?s.c:x
if(w==null)w=0
v=s.d
if(v==null)v=0
u=s.e
if(u==null)u=0
return A.dt(A.fB(A.b0(t,t,t,t,new A.b8(t,t,new A.cz(C.o,C.o,A.aeS(d,this.r,w),C.o),t,t,t,C.r),w,new A.d8(v,0,u,0),t,t),t,t),r,t)}}
B.pR.prototype={
GA(d){this.a=d},
HO(d){if(this.a===d)this.a=null},
i(d){var x=A.bt(this),w=this.a!=null?"<linked>":"<dangling>"
return"<optimized out>#"+x+"("+w+")"}}
B.uQ.prototype={
y_(d){var x,w,v,u,t=this
if(t.ry){x=t.BG()
x.toString
t.rx=A.vN(x)
t.ry=!1}if(t.rx==null)return null
w=new A.hT(new Float64Array(4))
w.pV(d.a,d.b,0,1)
x=t.rx.ai(0,w).a
v=x[0]
u=t.p4
return new A.j(v-u.a,x[1]-u.b)},
eu(d,e,f,g){var x
if(this.p1.a==null)return!1
x=this.y_(e)
if(x==null)return!1
return this.kd(d,x,!0,g)},
BG(){var x,w
if(this.RG==null)return null
x=this.R8
w=A.le(-x.a,-x.b,0)
x=this.RG
x.toString
w.cg(0,x)
return w},
UB(){var x,w,v,u,t,s,r=this
r.RG=null
x=r.p1.a
if(x==null)return
w=y.A
v=A.a([x],w)
u=A.a([r],w)
B.Vn(x,r,v,u)
t=B.ahZ(v)
x.m0(null,t)
w=r.p4
t.aE(0,w.a,w.b)
s=B.ahZ(u)
if(s.hU(s)===0)return
s.cg(0,t)
r.RG=s
r.ry=!0},
gkt(){return!0},
fN(d){var x,w,v=this
if(v.p1.a==null&&!0){v.R8=v.RG=null
v.ry=!0
v.sfh(null)
return}v.UB()
x=v.RG
w=y.y
if(x!=null){v.R8=v.p3
v.sfh(d.uh(x.a,w.a(v.z)))
v.hQ(d)
d.el()}else{v.R8=null
x=v.p3
v.sfh(d.uh(A.le(x.a,x.b,0).a,w.a(v.z)))
v.hQ(d)
d.el()}v.ry=!0},
m0(d,e){var x=this.RG
if(x!=null)e.cg(0,x)
else{x=this.p3
e.cg(0,A.le(x.a,x.b,0))}}}
B.Gy.prototype={
skV(d){var x=this,w=x.q
if(w===d)return
w.d=null
x.q=d
w=x.M
if(w!=null)d.d=w
x.an()},
gjq(){return!0},
bt(){var x,w=this
w.q5()
x=w.k3
x.toString
w.M=x
w.q.d=x},
aj(d,e){var x=this.ch,w=x.a,v=this.q
if(w==null)x.saH(0,A.afa(v,e))
else{y.t.a(w)
w.skV(v)
w.seX(0,e)}x=x.a
x.toString
d.pj(x,A.eD.prototype.ght.call(this),C.h)}}
B.Gv.prototype={
skV(d){if(this.q===d)return
this.q=d
this.an()},
sNM(d){return},
seX(d,e){if(this.a5.k(0,e))return
this.a5=e
this.an()},
sa6U(d){if(this.aD.k(0,d))return
this.aD=d
this.an()},
sa5c(d){if(this.cJ.k(0,d))return
this.cJ=d
this.an()},
a8(d){this.ch.saH(0,null)
this.lz(0)},
gjq(){return!0},
BB(){var x=y.s.a(A.v.prototype.gaH.call(this,this))
x=x==null?null:x.BG()
if(x==null){x=new A.b5(new Float64Array(16))
x.cU()}return x},
bz(d,e){if(this.q.a==null&&!0)return!1
return this.cs(d,e)},
cs(d,e){return d.rq(new B.a_r(this),e,this.BB())},
aj(d,e){var x,w,v,u,t=this,s=t.q.d
if(s==null)x=t.a5
else{w=t.aD.yu(s)
v=t.cJ
u=t.k3
u.toString
x=w.a3(0,v.yu(u)).S(0,t.a5)}w=y.s
if(w.a(A.v.prototype.gaH.call(t,t))==null)t.ch.saH(0,new B.uQ(t.q,!1,e,x,A.C(y.e,y.k),A.ae()))
else{v=w.a(A.v.prototype.gaH.call(t,t))
if(v!=null){v.p1=t.q
v.p2=!1
v.p4=x
v.p3=e}}w=w.a(A.v.prototype.gaH.call(t,t))
w.toString
d.mG(w,A.eD.prototype.ght.call(t),C.h,D.G8)},
cR(d,e){e.cg(0,this.BB())}}
B.GK.prototype={
MX(d,e){var x,w
if(e>0){x=d/e
w=C.d.bb(x)
if(Math.abs(x*e-w*e)<1e-10)return w
return C.d.eg(x)}return 0},
BH(d,e){var x,w
if(e>0){x=d/e-1
w=C.d.bb(x)
if(Math.abs(x*e-w*e)<1e-10)return Math.max(0,w)
return Math.max(0,C.d.fb(x))}return 0},
T7(d){var x,w=this.K$,v=A.m(this).j("a0.1"),u=y.c,t=0
while(!0){if(w!=null){x=w.e
x.toString
x=u.a(x).b
x.toString
x=x<d}else x=!1
if(!x)break;++t
x=w.e
x.toString
w=v.a(x).Z$}return t},
T9(d){var x,w=this.bj$,v=A.m(this).j("a0.1"),u=y.c,t=0
while(!0){if(w!=null){x=w.e
x.toString
x=u.a(x).b
x.toString
x=x>d}else x=!1
if(!x)break;++t
x=w.e
x.toString
w=v.a(x).bm$}return t},
bt(){var x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,a0,a1,a2,a3=this,a4=null,a5=y.z.a(A.v.prototype.gR.call(a3)),a6=a3.aM
a6.rx=!1
x=a3.ga6M()
w=a5.d
v=w+a5.z
u=v+a5.Q
t=a5.a2y(x,x)
s=a3.MX(v,x)
r=isFinite(u)?a3.BH(u,x):a4
if(a3.K$!=null){q=a3.T7(s)
a3.kA(q,r!=null?a3.T9(r):0)}else a3.kA(0,0)
if(a3.K$==null)if(!a3.yq(s,x*s)){p=s<=0?0:a6.go5()*x
a3.id=A.h1(a4,!1,a4,a4,p,0,0,p,a4)
a6.kG()
return}o=a3.K$
o.toString
o=o.e
o.toString
n=y.c
o=n.a(o).b
o.toString
m=o-1
l=a4
for(;m>=s;--m){k=a3.KO(t)
if(k==null){a3.id=A.h1(a4,!1,a4,a4,0,0,0,0,m*x)
return}o=k.e
o.toString
n.a(o).a=x*m
if(l==null)l=k}if(l==null){a3.K$.ex(t)
l=a3.K$
o=l.e
o.toString
n.a(o).a=x*s}o=l.e
o.toString
o=n.a(o).b
o.toString
m=o+1
o=A.m(a3).j("a0.1")
j=r!=null
while(!0){if(!(!j||m<=r)){i=1/0
break}h=l.e
h.toString
k=o.a(h).Z$
if(k!=null){h=k.e
h.toString
h=n.a(h).b
h.toString
h=h!==m}else h=!0
if(h){k=a3.KM(t,l)
if(k==null){i=m*x
break}}else k.ex(t)
h=k.e
h.toString
n.a(h)
g=h.b
g.toString
h.a=x*g;++m
l=k}o=a3.bj$
o.toString
o=o.e
o.toString
o=n.a(o).b
o.toString
f=x*s
e=x*(o+1)
i=Math.min(i,a6.zA(a5,s,o,f,e))
d=a3.fQ(a5,f,e)
a0=a3.ku(a5,f,e)
a1=w+a5.r
a2=isFinite(a1)?a3.BH(a1,x):a4
a3.id=A.h1(a0,a2!=null&&o>=a2||w>0,a4,a4,i,d,0,i,a4)
if(i===e)a6.rx=!0
a6.kG()}}
B.mx.prototype={
aw(d){var x=new B.Gy(this.e,null,A.ae())
x.av()
x.sb_(null)
return x},
az(d,e){e.skV(this.e)}}
B.CD.prototype={
aw(d){var x=new B.Gv(this.e,!1,this.x,D.cM,D.cM,null,A.ae())
x.av()
x.sb_(null)
return x},
az(d,e){e.skV(this.e)
e.sNM(!1)
e.seX(0,this.x)
e.sa6U(D.cM)
e.sa5c(D.cM)}}
B.xy.prototype={
K5(d){return null},
yK(d,e){var x,w,v,u,t,s,r,q,p=null
if(e>=0)u=e>=this.b
else u=!0
if(u)return p
x=null
try{x=this.a.$2(d,e)}catch(t){w=A.ar(t)
v=A.aL(t)
s=new A.bv(w,v,"widgets library",A.bo("building"),p,!1)
A.d9(s)
x=A.UT(s)}if(x==null)return p
if(x.a!=null){u=x.a
u.toString
r=new A.t_(u)}else r=p
u=x
x=new A.fY(u,p)
q=A.agn(x,e)
if(q!=null)x=new A.v1(q,x,p)
u=x
x=new A.oT(new A.t0(u,p),p)
return new A.n5(x,r)},
gml(){return this.b},
Ck(d){return!0}}
var z=a.updateTypes([])
B.a_r.prototype={
$2(d,e){return this.a.q4(d,e)},
$S:9};(function inheritance(){var x=a.inherit,w=a.inheritMany
x(B.uj,A.ab)
x(B.pR,A.I)
x(B.uQ,A.dC)
w(A.qn,[B.Gy,B.Gv])
x(B.a_r,A.fC)
x(B.GK,A.hF)
w(A.aO,[B.mx,B.CD])
x(B.xy,A.Hz)})()
A.hc(b.typeUniverse,JSON.parse('{"uj":{"ab":[],"h":[]},"uQ":{"dC":[],"G":[]},"Gy":{"x":[],"aD":["x"],"v":[],"G":[],"a7":[]},"Gv":{"x":[],"aD":["x"],"v":[],"G":[],"a7":[]},"GK":{"hF":[],"bZ":[],"a0":["x","dd"],"v":[],"G":[],"a7":[]},"mx":{"aO":[],"ai":[],"h":[]},"CD":{"aO":[],"ai":[],"h":[]}}'))
var y={A:A.Z("q<dC>"),t:A.Z("vq"),z:A.Z("hN"),c:A.Z("dd"),e:A.Z("l"),m:A.Z("dC?"),s:A.Z("uQ?"),y:A.Z("afO?"),k:A.Z("~()")};(function constants(){D.cM=new A.dO(-1,-1)
D.e_=new A.J(4293454056)
D.G8=new A.u(-1/0,-1/0,1/0,1/0)
D.vM=new A.cW(5,null,null,null)})()}
$__dart_deferred_initializers__["pmxuDM+rf4nQmcqxQ1DA3W9qbpQ="] = $__dart_deferred_initializers__.current
