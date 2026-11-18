.class public abstract Lteam/opay/core/common/android/glide/GlideModel;
.super Ljava/lang/Object;
.source "GlideModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/core/common/android/glide/GlideModel;",
        "",
        "Lteam/opay/core/common/android/glide/GlideInput;",
        "input",
        "<init>",
        "(Lteam/opay/core/common/android/glide/GlideInput;)V",
        "Lteam/opay/core/common/android/glide/ModelType;",
        "modelType",
        "",
        "b",
        "(Lteam/opay/core/common/android/glide/ModelType;)Z",
        "",
        "width",
        "height",
        "",
        "a",
        "(II)Ljava/lang/String;",
        "Lteam/opay/core/common/android/glide/GlideInput;",
        "getInput",
        "()Lteam/opay/core/common/android/glide/GlideInput;",
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


# instance fields
.field public final a:Lteam/opay/core/common/android/glide/GlideInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/common/android/glide/GlideInput;)V
    .locals 1
    .param p1    # Lteam/opay/core/common/android/glide/GlideInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/core/common/android/glide/GlideModel;->a:Lteam/opay/core/common/android/glide/GlideInput;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a(II)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract b(Lteam/opay/core/common/android/glide/ModelType;)Z
    .param p1    # Lteam/opay/core/common/android/glide/ModelType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
