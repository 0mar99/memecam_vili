.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0O0;


# instance fields
.field public final OooO00o:Z

.field public final OooO0O0:Landroid/graphics/Path$FillType;

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

.field public final OooO0o:Z

.field public final OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0OO:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO00o:Z

    .line 4
    iput-object p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0O0:Landroid/graphics/Path$FillType;

    .line 5
    iput-object p4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    .line 6
    iput-object p5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    .line 7
    iput-boolean p6, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;)LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0OO;
    .locals 1

    .line 2
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;

    invoke-direct {v0, p1, p2, p0}, LOooO0O0/OooO00o/OooO00o/OooOo0/OooO0O0/OooO0oO;-><init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO00o;LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;)V

    return-object v0
.end method

.method public OooO00o()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;
    .locals 0

    .line 1
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO00o;

    return-object p0
.end method

.method public OooO0O0()Landroid/graphics/Path$FillType;
    .locals 0

    .line 1
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0O0:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0OO:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0Oo()LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;
    .locals 0

    .line 1
    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0/OooO0Oo;

    return-object p0
.end method

.method public OooO0o0()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO0o:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOO0;->OooO00o:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
