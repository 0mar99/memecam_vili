.class public Lcom/mi/device/Vida;
.super Lcom/mi/device/Viva;
.source "Vida.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mi/device/Viva;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0OO()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string v0, "REDMI"

    const-string v1, "NOTE 11 PRO"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public o000O()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public o0O00O0o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
