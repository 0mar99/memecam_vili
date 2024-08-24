.class public LOooO0OO/OooO0OO;
.super Ljava/lang/Object;
.source "FusionType.java"


# static fields
.field public static final OooO:I = 0x3

.field public static final OooO0O0:I = 0x0

.field public static final OooO0OO:I = 0x1

.field public static final OooO0Oo:I = 0x2

.field public static final OooO0o:I = 0x0

.field public static final OooO0o0:I = 0x3

.field public static final OooO0oO:I = 0x1

.field public static final OooO0oo:I = 0x2

.field public static final OooOO0:LOooO0OO/OooO0OO;


# instance fields
.field public final OooO00o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LOooO0OO/OooO0OO;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, LOooO0OO/OooO0OO;-><init>(IIII)V

    sput-object v0, LOooO0OO/OooO0OO;->OooOO0:LOooO0OO/OooO0OO;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2, p3, p4}, LOooO0OO/OooO0OO;->OooO00o(IIII)V

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p4, 0xff

    shl-int/lit8 p2, p2, 0x0

    or-int/2addr p1, p2

    .line 3
    iput p1, p0, LOooO0OO/OooO0OO;->OooO00o:I

    return-void
.end method

.method public static OooO00o(IIII)V
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x1

    const-string v2, ""

    if-ltz p0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p0, v1

    :goto_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " algo"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p0, v1

    :cond_3
    if-ltz p2, :cond_4

    if-le p2, v0, :cond_5

    .line 4
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mcnt"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p0, v1

    :cond_5
    if-ltz p3, :cond_7

    if-le p3, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, p0

    goto :goto_3

    .line 5
    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " scnt"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-nez v1, :cond_8

    return-void

    .line 6
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fusion parameter outside of expected range:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static OooO0O0(IIII)LOooO0OO/OooO0OO;
    .locals 1

    .line 2
    new-instance v0, LOooO0OO/OooO0OO;

    invoke-direct {v0, p0, p1, p2, p3}, LOooO0OO/OooO0OO;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public OooO00o()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0OO/OooO0OO;->OooO00o:I

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public OooO0O0()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0OO/OooO0OO;->OooO00o:I

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public OooO0OO()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0OO/OooO0OO;->OooO00o:I

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public OooO0Oo()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0OO/OooO0OO;->OooO00o:I

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LOooO0OO/OooO0OO;

    if-eqz v0, :cond_0

    check-cast p1, LOooO0OO/OooO0OO;

    iget p1, p1, LOooO0OO/OooO0OO;->OooO00o:I

    iget p0, p0, LOooO0OO/OooO0OO;->OooO00o:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, LOooO0OO/OooO0OO;->OooO00o:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FusionType(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO0OO/OooO0OO;->OooO0Oo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", algo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO0OO/OooO0OO;->OooO00o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO0OO/OooO0OO;->OooO0O0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO0OO/OooO0OO;->OooO0OO()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
