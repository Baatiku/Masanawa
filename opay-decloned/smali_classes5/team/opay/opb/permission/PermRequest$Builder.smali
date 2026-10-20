.class public final Lteam/opay/opb/permission/PermRequest$Builder;
.super Ljava/lang/Object;
.source "PermRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/permission/PermRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0007J\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\r\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/opb/permission/PermRequest$Builder;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/common/base/DialogInfo;",
        "info",
        "b",
        "(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/opb/permission/PermRequest$Builder;",
        "forever",
        "c",
        "Lteam/opay/opb/permission/PermRequest;",
        "a",
        "()Lteam/opay/opb/permission/PermRequest;",
        "Lteam/opay/core/common/base/DialogInfo;",
        "d",
        "()Lteam/opay/core/common/base/DialogInfo;",
        "setDenied$opb_permission_release",
        "(Lteam/opay/core/common/base/DialogInfo;)V",
        "denied",
        "e",
        "setForever$opb_permission_release",
        "opb-permission_release"
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
.field public a:Lteam/opay/core/common/base/DialogInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lteam/opay/core/common/base/DialogInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/opb/permission/PermRequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/opb/permission/PermRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lteam/opay/opb/permission/PermRequest;-><init>(Lteam/opay/opb/permission/PermRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/opb/permission/PermRequest$Builder;
    .locals 0
    .param p1    # Lteam/opay/core/common/base/DialogInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/permission/PermRequest$Builder;->a:Lteam/opay/core/common/base/DialogInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/opb/permission/PermRequest$Builder;
    .locals 1
    .param p1    # Lteam/opay/core/common/base/DialogInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "forever"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/permission/PermRequest$Builder;->b:Lteam/opay/core/common/base/DialogInfo;

    .line 7
    .line 8
    return-object p0
.end method

.method public final d()Lteam/opay/core/common/base/DialogInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/permission/PermRequest$Builder;->a:Lteam/opay/core/common/base/DialogInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lteam/opay/core/common/base/DialogInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/permission/PermRequest$Builder;->b:Lteam/opay/core/common/base/DialogInfo;

    .line 2
    .line 3
    return-object v0
.end method
