.class public final Lteam/opay/core/common/android/glide/IGlideModel$Companion;
.super Ljava/lang/Object;
.source "GlideModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/android/glide/IGlideModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R?\u0010\u0010\u001a&\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\u0008j\u0012\u0012\u0004\u0012\u00020\t\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n`\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/core/common/android/glide/IGlideModel$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/common/android/glide/ImageModel;",
        "data",
        "b",
        "(Lteam/opay/core/common/android/glide/ImageModel;)Ljava/lang/Object;",
        "Ljava/util/HashMap;",
        "Lteam/opay/core/common/android/glide/ModelType;",
        "Ljava/lang/Class;",
        "Lkotlin/collections/HashMap;",
        "iGlideModel$delegate",
        "Lid8;",
        "a",
        "()Ljava/util/HashMap;",
        "iGlideModel",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/android/glide/IGlideModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lteam/opay/core/common/android/glide/ModelType;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lteam/opay/core/common/android/glide/IGlideModel;->access$getIGlideModel$delegate$cp()Lid8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    return-object v0
.end method

.method public final b(Lteam/opay/core/common/android/glide/ImageModel;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lteam/opay/core/common/android/glide/ImageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "data"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/common/android/glide/IGlideModel$Companion;->a()Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->c()Lteam/opay/core/common/android/glide/ModelType;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Class;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    new-array v3, v1, [Ljava/lang/Class;

    .line 31
    .line 32
    const-class v4, Lteam/opay/core/common/android/glide/GlideInput;

    .line 33
    .line 34
    aput-object v4, v3, v0

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-static {p1}, Lzq6;->a(Lteam/opay/core/common/android/glide/ImageModel;)Lteam/opay/core/common/android/glide/GlideInput;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v3, v1, v0

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->b()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/common/android/glide/ImageModel;->b()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    return-object v0
.end method
