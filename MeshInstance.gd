tool

extends MeshInstance

export var size = 1 setget setSize, getSize

func setSize(s):
	var st = SurfaceTool.new()
	st.begin(Mesh.PRIMITIVE_TRIANGLES)
	st.add_color(Color(1, 0, 0))
	st.add_uv(Vector2(0, 0))
	st.add_vertex(Vector3(0, 0, 0))
	st.add_uv(Vector2(1, 0))
	st.add_vertex(Vector3(10, 0, 0))
	st.add_uv(Vector2(1, 1))
	st.add_vertex(Vector3(10, 10, 0))
	st.add_vertex(Vector3(0, 10, 5))
	st.index()
	#st.generate_normals()
	mesh = st.commit()
	size = s

func getSize():
	return size
