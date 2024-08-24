.class public Lcom/xiaomi/camera/imagecodec/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final METHOD_D_T_M:Ljava/lang/String; = "method_d_t_m"

.field public static final METHOD_D_T_M_T:Ljava/lang/String; = "method_d_t_m_t"

.field public static final METHOD_E_T_M:Ljava/lang/String; = "method_e_t_m"

.field public static final METHOD_E_T_M_T:Ljava/lang/String; = "method_e_t_m_t"

.field public static final METHOD_I_T_M:Ljava/lang/String; = "method_i_t_m"

.field public static final METHOD_I_T_M_T:Ljava/lang/String; = "method_i_t_m_t"

.field public static final METHOD_V_T_M:Ljava/lang/String; = "method_v_t_m"

.field public static final METHOD_V_T_M_T:Ljava/lang/String; = "method_v_t_m_t"

.field public static final METHOD_WTF_T_M:Ljava/lang/String; = "method_wtf_t_m"

.field public static final METHOD_WTF_T_M_T:Ljava/lang/String; = "method_wtf_t_m_t"

.field public static final METHOD_WTF_T_T:Ljava/lang/String; = "method_wtf_t_t"

.field public static final METHOD_W_T_M:Ljava/lang/String; = "method_w_t_m"

.field public static final METHOD_W_T_M_T:Ljava/lang/String; = "method_w_t_m_t"

.field public static final METHOD_W_T_T:Ljava/lang/String; = "method_w_t_t"

.field public static final MIUI_CAMERA_LOG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "imagecodec-Log"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;

    .line 2
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/Log;->getMiuiCameraLogClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "method_d_t_m"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_d_t_m_t"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "method_e_t_m"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_e_t_m_t"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static final getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 13

    .line 1
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v1, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v2, -0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "method_w_t_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "method_w_t_m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v7

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "method_v_t_m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "method_i_t_m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "method_e_t_m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "method_d_t_m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v6

    goto :goto_0

    :sswitch_6
    const-string v3, "method_e_t_m_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_7
    const-string v3, "method_wtf_t_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xd

    goto :goto_0

    :sswitch_8
    const-string v3, "method_wtf_t_m"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_9
    const-string v3, "method_i_t_m_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "method_d_t_m_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_b
    const-string v3, "method_w_t_m_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_c
    const-string v3, "method_v_t_m_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_d
    const-string v3, "method_wtf_t_m_t"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/16 v2, 0xb

    :cond_2
    :goto_0
    const-string v3, "e"

    const-string v8, "i"

    const-string v9, "d"

    const-string v10, "v"

    const-string v11, "wtf"

    const-string v12, "w"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    :try_start_1
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v6

    invoke-virtual {v2, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_1

    .line 5
    :pswitch_1
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v6

    invoke-virtual {v2, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_1

    .line 6
    :pswitch_2
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v7

    invoke-virtual {v2, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_1

    .line 7
    :pswitch_3
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v5

    aput-object v0, v4, v6

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_1

    .line 8
    :pswitch_4
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v7

    invoke-virtual {v2, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_1

    .line 9
    :pswitch_5
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v7

    invoke-virtual {v2, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto/16 :goto_1

    .line 10
    :pswitch_6
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v7

    invoke-virtual {v2, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 11
    :pswitch_7
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    const-class v0, Ljava/lang/Throwable;

    aput-object v0, v3, v7

    invoke-virtual {v2, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 12
    :pswitch_8
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 13
    :pswitch_9
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v4, v7, [Ljava/lang/Class;

    aput-object v0, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 14
    :pswitch_a
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 15
    :pswitch_b
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v12, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 16
    :pswitch_c
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 17
    :pswitch_d
    sget-object v2, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG:Ljava/lang/Class;

    new-array v3, v7, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 18
    :goto_2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/Log;->MIUI_CAMERA_LOG_METHODS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x62bcb19d -> :sswitch_d
        -0x5389cb90 -> :sswitch_c
        -0x1ea3904f -> :sswitch_b
        -0xbb9f622 -> :sswitch_a
        -0x33acddd -> :sswitch_9
        0x46d05ee -> :sswitch_8
        0x46d05f5 -> :sswitch_7
        0x292c451f -> :sswitch_6
        0x4e4e6429 -> :sswitch_5
        0x4e5c7baa -> :sswitch_4
        0x4e94d9ae -> :sswitch_3
        0x4f4c0b3b -> :sswitch_2
        0x4f5a22bc -> :sswitch_1
        0x4f5a22c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
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

.method public static getMiuiCameraLogClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.camera.log.Log"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "imagecodec-Log"

    const-string v1, "\'com.android.camera.log.Log\' not found"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "method_i_t_m"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_i_t_m_t"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "method_v_t_m"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_v_t_m_t"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "method_w_t_m"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_w_t_m_t"

    .line 7
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 9
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_w_t_t"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "method_wtf_t_m"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_wtf_t_m_t"

    .line 7
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 9
    :catch_0
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 4

    :try_start_0
    const-string v0, "method_wtf_t_t"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/Log;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
