.class public final Lcom/xiaomi/renderengine/data/AttributeManager;
.super Ljava/lang/Object;
.source "AttributeManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AttributeManager"

.field public static sAllAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/renderengine/data/RendererAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/renderengine/data/AttributeManager;->sAllAttributes:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAllAttribute()V
    .locals 3

    const-class v0, Lcom/xiaomi/renderengine/data/AttributeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/renderengine/data/AttributeManager;->sAllAttributes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "AttributeManager"

    const-string v2, "clearAllAttribute"

    .line 2
    invoke-static {v1, v2}, Lcom/xiaomi/renderengine/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;
    .locals 5

    const-class v0, Lcom/xiaomi/renderengine/data/AttributeManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xiaomi/renderengine/data/AttributeManager;->sAllAttributes:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/renderengine/data/RendererAttribute;

    if-nez v1, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/16 v2, 0x66

    if-eq p0, v2, :cond_2

    const/4 v2, 0x6

    if-eq p0, v2, :cond_1

    const/4 v2, 0x7

    if-eq p0, v2, :cond_1

    const/16 v2, 0x8

    if-eq p0, v2, :cond_0

    const-string v2, "AttributeManager"

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRendererAttribute unsupported renderer type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/renderengine/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;-><init>()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;-><init>()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;-><init>()V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    invoke-direct {v1}, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;-><init>()V

    :goto_0
    if-eqz v1, :cond_4

    .line 7
    iput p0, v1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    .line 8
    sget-object v2, Lcom/xiaomi/renderengine/data/AttributeManager;->sAllAttributes:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
