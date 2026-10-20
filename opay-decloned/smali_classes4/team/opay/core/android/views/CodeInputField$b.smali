.class public final Lteam/opay/core/android/views/CodeInputField$b;
.super Ljava/lang/Object;
.source "CodeInputField.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/views/CodeInputField;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/core/android/views/CodeInputField$b",
        "Ljava/lang/Runnable;",
        "",
        "run",
        "()V",
        "",
        "a",
        "Z",
        "blinkOn",
        "sdk_release"
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
.field public a:Z

.field public final synthetic b:Lteam/opay/core/android/views/CodeInputField;


# direct methods
.method public constructor <init>(Lteam/opay/core/android/views/CodeInputField;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField$b;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lteam/opay/core/android/views/CodeInputField$b;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$b;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/core/android/views/CodeInputField;->h(Lteam/opay/core/android/views/CodeInputField;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lteam/opay/core/android/views/CodeInputField$b;->a:Z

    .line 10
    .line 11
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField$b;->a:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField$b;->a:Z

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$b;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 21
    .line 22
    invoke-static {v0}, Lteam/opay/core/android/views/CodeInputField;->g(Lteam/opay/core/android/views/CodeInputField;)Ljava/lang/Runnable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-wide/16 v2, 0x1f4

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
