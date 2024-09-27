((a,b,c)=>{a[b]=a[b]||{}
a[b][c]=a[b][c]||[]
a[b][c].push({p:"main.dart.js_20",e:"beginPart"})})(self,"$__dart_deferred_initializers__","eventLog")
$__dart_deferred_initializers__.current=function(a,b,c,$){var B,A,C={
aIA(d,e,f,g,h){var y,x,w,v,u,t,s
$label0$0:{if(e<60){y=new B.hb(f,g,0)
break $label0$0}if(e<120){y=new B.hb(g,f,0)
break $label0$0}if(e<180){y=new B.hb(0,f,g)
break $label0$0}if(e<240){y=new B.hb(0,g,f)
break $label0$0}if(e<300){y=new B.hb(g,0,f)
break $label0$0}y=new B.hb(f,0,g)
break $label0$0}x=y.a
w=null
v=null
u=y.b
t=y.c
v=t
w=u
s=x
return B.J(A.c.ai(d*255),A.c.ai((s+h)*255),A.c.ai((w+h)*255),A.c.ai((v+h)*255))},
aDs(d){var y,x,w,v=d.a,u=(v>>>16&255)/255,t=(v>>>8&255)/255,s=(v&255)/255,r=Math.max(u,Math.max(t,s)),q=Math.min(u,Math.min(t,s)),p=r-q,o=B.bk("hue")
if(r===0)o.b=0
else if(r===u)o.b=60*A.c.aS((t-s)/p,6)
else if(r===t)o.b=60*((s-u)/p+2)
else if(r===s)o.b=60*((u-t)/p+4)
o.b=isNaN(o.b0())?0:o.b0()
y=o.b0()
x=(r+q)/2
w=x===1?0:B.B(p/(1-Math.abs(2*x-1)),0,1)
return new C.x5((v>>>24&255)/255,y,w,x)},
x5:function x5(d,e,f,g){var _=this
_.a=d
_.b=e
_.c=f
_.d=g},
aqm(d){return new C.Eh(d,A.m,1,A.r,-1)},
tL:function tL(){},
Eh:function Eh(d,e,f,g,h){var _=this
_.x=d
_.a=e
_.b=f
_.c=g
_.d=h}},D
B=c[0]
A=c[2]
C=a.updateHolder(c[14],C)
D=c[32]
C.x5.prototype={
anr(){var y=this,x=y.d,w=(1-Math.abs(2*x-1))*y.c,v=y.b
return C.aIA(y.a,v,w,w*(1-Math.abs(A.c.aS(v/60,2)-1)),x-w/2)},
j(d,e){var y=this
if(e==null)return!1
if(y===e)return!0
return e instanceof C.x5&&e.a===y.a&&e.b===y.b&&e.c===y.c&&e.d===y.d},
gB(d){var y=this
return B.I(y.a,y.b,y.c,y.d,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a,A.a)},
k(d){var y=this
return"HSLColor("+B.h(y.a)+", "+B.h(y.b)+", "+B.h(y.c)+", "+B.h(y.d)+")"}}
C.tL.prototype={$ibc:1}
C.Eh.prototype={
Z(d){return this.x.$1(d)}}
var z=a.updateTypes([]);(function inheritance(){var y=a.inherit
y(C.x5,B.F)
y(C.tL,B.aP)
y(C.Eh,C.tL)})()
B.eX(b.typeUniverse,JSON.parse('{"tL":{"aP":[],"bc":["aP?"]},"Eh":{"tL":[],"aP":[],"bc":["aP?"]}}'));(function constants(){D.j5=new B.dY(0,0,0.58,1)
D.xH=new B.aw(1,1)
D.yI=new B.E(48,48)
D.kO=new B.d3(null,15,null,null)
D.bh=new B.bs(7,"error")})()};
((a,b)=>{a[b]=a.current
a.eventLog.push({p:"main.dart.js_20",e:"endPart",h:b})})($__dart_deferred_initializers__,"VhAtWg68lLh8k32xDyHBlVrj5i4=");