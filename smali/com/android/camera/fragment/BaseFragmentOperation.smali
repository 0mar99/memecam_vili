.class public Lcom/android/camera/fragment/BaseFragmentOperation;
.super Ljava/lang/Object;
.source "BaseFragmentOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentOperation$OperateFragment;
    }
.end annotation


# static fields
.field public static final OPERATE_CLEAR:I = 0x2

.field public static final OPERATE_HIDE:I = 0x6

.field public static final OPERATE_HIDE_CURRENT:I = 0x5

.field public static final OPERATE_INSERT:I = 0xb

.field public static final OPERATE_POP:I = 0xa

.field public static final OPERATE_POP_AND_CLEAR_OTHERS:I = 0x8

.field public static final OPERATE_PUSH:I = 0x9

.field public static final OPERATE_PUSH_AND_HIDE_OTHERS:I = 0x7

.field public static final OPERATE_REMOVE_CURRENT:I = 0x3

.field public static final OPERATE_REMOVE_TARGET:I = 0xc

.field public static final OPERATE_REPLACE:I = 0x1

.field public static final OPERATE_SHOW:I = 0x4

.field public static final OPERATE_UNKNOWN:I = -0x1


# instance fields
.field public containerType:I

.field public operateType:I

.field public pendingFragmentAlias:Ljava/lang/String;

.field public pendingFragmentIndex:I

.field public pendingFragmentInfo:I

.field public pendingSubFragmentInfo:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/16 v0, 0xf0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentIndex:I

    .line 5
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    return-void
.end method

.method private checkOperation()V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-gtz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "already set!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    return-object v0
.end method

.method public static getOperationName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "OPERATE_UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "OPERATE_REMOVE_TARGET"

    return-object p0

    :pswitch_1
    const-string p0, "OPERATE_INSERT"

    return-object p0

    :pswitch_2
    const-string p0, "OPERATE_POP"

    return-object p0

    :pswitch_3
    const-string p0, "OPERATE_PUSH"

    return-object p0

    :pswitch_4
    const-string p0, "OPERATE_POP_AND_CLEAR_OTHERS"

    return-object p0

    :pswitch_5
    const-string p0, "OPERATE_PUSH_AND_HIDE_OTHERS"

    return-object p0

    :pswitch_6
    const-string p0, "OPERATE_HIDE"

    return-object p0

    :pswitch_7
    const-string p0, "OPERATE_HIDE_CURRENT"

    return-object p0

    :pswitch_8
    const-string p0, "OPERATE_SHOW"

    return-object p0

    :pswitch_9
    const-string p0, "OPERATE_REMOVE_CURRENT"

    return-object p0

    :pswitch_a
    const-string p0, "OPERATE_CLEAR"

    return-object p0

    :pswitch_b
    const-string p0, "OPERATE_REPLACE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 3
    iget v2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iget v3, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v3, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iget v3, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    iget v3, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public hide()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public insert(II)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentIndex:I

    return-object p0
.end method

.method public pop()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public varargs push(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/16 v0, 0x9

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 4
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p2, p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xf0

    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    return-object p0
.end method

.method public varargs pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 4
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p2, p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xf0

    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    return-object p0
.end method

.method public removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public removeTarget(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public show()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseFragmentOperation{operateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 2
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->getOperationName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", containerViewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    .line 3
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getContainerTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingFragmentInfo= 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingSubFragmentInfo= 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingFragmentAlias=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
