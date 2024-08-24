.class public Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiVideoInterpolator;
.super Ljava/lang/Object;
.source "XiaomiVideoInterpolator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "XiaomiVideoInterpolator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doDecodeAndEncodeSyncWithWatermark(IILjava/lang/String;Ljava/lang/String;IIIJLandroid/graphics/Bitmap;[FZZ)Z
    .locals 18

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 1
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    .line 3
    new-instance v15, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;

    move-object v3, v15

    move/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v17, v15

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v3 .. v16}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;-><init>(IILjava/lang/String;Ljava/lang/String;IIIJLandroid/graphics/Bitmap;[FZZ)V

    .line 4
    new-instance v3, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiVideoInterpolator$1;

    invoke-direct {v3, v2, v1, v0}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiVideoInterpolator$1;-><init>(Ljava/util/concurrent/locks/Lock;[ZLjava/util/concurrent/locks/Condition;)V

    move-object/from16 v4, v17

    .line 5
    invoke-virtual {v4, v3}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V

    .line 6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v4}, Lcom/miui/extravideoxmalgo/XiaomiAlgoVideoInterpolatorImp/XiaomiAlgoVideoInterpolatorImp;->doDecodeAndEncode()V

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    aput-boolean v3, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " return success[0]  =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XiaomiVideoInterpolator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    aget-boolean v0, v1, v3

    return v0

    .line 13
    :goto_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v0
.end method

.method public static doXiaomiAlgoDecodeAndEncodeSync(IILjava/lang/String;Ljava/lang/String;IIIJZZ)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v11, p9

    move/from16 v12, p10

    .line 1
    invoke-static/range {v0 .. v12}, Lcom/miui/extravideoxmalgo/xiaomiAlgoInterpolator/XiaomiVideoInterpolator;->doDecodeAndEncodeSyncWithWatermark(IILjava/lang/String;Ljava/lang/String;IIIJLandroid/graphics/Bitmap;[FZZ)Z

    move-result v0

    return v0
.end method
